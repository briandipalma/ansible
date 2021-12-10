function fish_title
    set -q argv[1]; and set command ": $argv"; or set command ""
    # Looks like `~/d/fish: git log` or `/e/apt`
    echo (fish_prompt_pwd_dir_length=1 prompt_pwd)$command
end
