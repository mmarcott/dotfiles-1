# mkdir, cd into it
mkcd () {
  mkdir -p "$*"
  cd "$*"
}

# Set prompt
PROMPT='
$(_user_host)${_current_dir} $(git_prompt_info) $(_ruby_version)
>> '
