local lib = require("neotest.lib")
local util = require("neotest-karma.util")

---@type neotest.Adapter
local adapter = { name = "neotest-karma" }

function adapter.root(path)
	return lib.files.match_root_pattern("package.json")(path)
end

function adapter.filter_dir(name)
	return name ~= "node_modules"
end

---@param file_path? string
---@return boolean
function adapter.is_test_file(file_path)
	if file_path == nil then
		return false
	end

	local is_test_file = false

	if string.match(file_path, "__tests__") then
		is_test_file = true
	end

	for _, x in ipairs({ "spec", "test" }) do
		for _, ext in ipairs({ "js", "jsx", "coffee", "ts", "tsx" }) do
			if string.match(file_path, "%." .. x .. "%." .. ext .. "$") then
				is_test_file = true
				goto matched_pattern
			end
		end
	end

	::matched_pattern::
	return is_test_file and util.hasKarmaDependency(file_path)
end

---@async
---@return neotest.Tree | nil
function adapter.discover_positions(path)
	local query = [[
    ; -- Namespaces --
    ; Matches: `describe('context')`
    ((call_expression
      function: (identifier) @func_name (#eq? @func_name "describe")
      arguments: (arguments (string (string_fragment) @namespace.name) (arrow_function))
    )) @namespace.definition
    ; Matches: `describe.only('context')`
    ((call_expression
      function: (member_expression
        object: (identifier) @func_name (#any-of? @func_name "describe")
      )
      arguments: (arguments (string (string_fragment) @namespace.name) (arrow_function))
    )) @namespace.definition
    ; Matches: `describe.each(['data'])('context')`
    ((call_expression
      function: (call_expression
        function: (member_expression
          object: (identifier) @func_name (#any-of? @func_name "describe")
        )
      )
      arguments: (arguments (string (string_fragment) @namespace.name) (arrow_function))
    )) @namespace.definition

    ; -- Tests --
    ; Matches: `test('test') / it('test')`
    ((call_expression
      function: (identifier) @func_name (#any-of? @func_name "it" "test")
      arguments: (arguments (string (string_fragment) @test.name) (arrow_function))
    )) @test.definition
    ; Matches: `test.only('test') / it.only('test')`
    ((call_expression
      function: (member_expression
        object: (identifier) @func_name (#any-of? @func_name "test" "it")
      )
      arguments: (arguments (string (string_fragment) @test.name) (arrow_function))
    )) @test.definition
    ; Matches: `test.each(['data'])('test') / it.each(['data'])('test')`
    ((call_expression
      function: (call_expression
        function: (member_expression
          object: (identifier) @func_name (#any-of? @func_name "it" "test")
        )
      )
      arguments: (arguments (string (string_fragment) @test.name) (arrow_function))
    )) @test.definition
  ]]

	return lib.treesitter.parse_positions(path, query, { nested_tests = true })
end

---@param args neotest.RunArgs
---@return neotest.RunSpec | nil
function adapter.build_spec(args)
	-- local results_path = async.fn.tempname() .. ".json"
	local tree = args.tree

	if not tree then
		return
	end

	local pos = args.tree:data()
	-- local testNamePattern = ".*"
	--
	-- if pos.type == "test" then
	-- 	testNamePattern = escapeTestPattern(pos.name) .. "$"
	-- end
	--
	-- if pos.type == "namespace" then
	-- 	testNamePattern = "^ " .. escapeTestPattern(pos.name)
	-- end
	--
	local binary = util.getKarmaCommand(pos.path)
	-- local config = getkarmaConfig(pos.path) or "karma.config.js"
	local command = vim.split(binary, "%s+")

	-- if util.path.exists(config) then
	-- 	-- only use config if available
	-- 	table.insert(command, "--config=" .. config)
	-- end
	--
	vim.list_extend(command, {
		-- "--run",
		-- "--reporter=verbose",
		-- "--reporter=json",
		-- "--outputFile=" .. results_path,
		-- "--testNamePattern=" .. testNamePattern .. "",
		-- pos.path,
	})

	return {
		command = command,
		cwd = getCwd(pos.path),
		context = {
			results_path = results_path,
			file = pos.path,
		},
		strategy = get_strategy_config(args.strategy, command),
		env = getEnv(args[2] and args[2].env or {}),
	}
end

return adapter
