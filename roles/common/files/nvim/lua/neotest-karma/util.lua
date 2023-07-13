local lib = require("neotest.lib")

local function find_node_modules_ancestor(startpath)
	return search_ancestors(startpath, function(path)
		if path.is_dir(M.path.join(path, "node_modules")) then
			return path
		end
	end)
end

---@param path string
---@return string
local function getKarmaCommand(path)
	local rootPath = find_node_modules_ancestor(path)
	local karmaBinary = util.path.join(rootPath, "node_modules", ".bin", "karma")

	if util.path.exists(karmaBinary) then
		return karmaBinary
	end

	return "karma"
end

---@param path string
---@return boolean
local function hasKarmaDependency(path)
	local rootPath = lib.files.match_root_pattern("package.json")(path)

	if not rootPath then
		return false
	end

	local success, packageJsonContent = pcall(lib.files.read, rootPath .. "/package.json")

	if not success then
		print("cannot read package.json")
		return false
	end

	local parsedPackageJson = vim.json.decode(packageJsonContent)

	if parsedPackageJson == nil then
		print("package.json is empty")
		return false
	end

	if parsedPackageJson["dependencies"] then
		for key, _ in pairs(parsedPackageJson["dependencies"]) do
			if key == "karma" then
				return true
			end
		end
	end

	if parsedPackageJson["devDependencies"] then
		for key, _ in pairs(parsedPackageJson["devDependencies"]) do
			if key == "karma" then
				return true
			end
		end
	end

	return false
end

return {
	getKarmaCommand = getKarmaCommand,
	hasKarmaDependency = hasKarmaDependency,
}
