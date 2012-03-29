# Enver basic command completion
_enver () {
  local curcontext="$curcontext" state line
  typeset -A opt_args

  _arguments -C \
    ':command:->command' \
    '*::options:->options'

  case $state in
    (command)
      local -a subcommands
      subcommands=(
        'init:Initialize enver and generate RSA and AES keys.'
        'get:Retrieve an object value and copy it to clipboard.'
        'add:Add a new object.'
        'import:Import a json file.'
        'delete:Delete the specified object.'
        'list:List all or partial objects.'
        'export:Export the json database to file'
      )
      _describe -t commands 'enver'  subcommands
    ;;
  (options)
      case $line[1] in

        (get)
          _arguments \
          ":path:__enver_get_path_list"
        ;;
        (delete)
          _arguments \
          ":path:__enver_get_path_list"
        ;;
        (list)
          _arguments \
          ":path:__enver_get_path_list"
        ;;
      esac
    ;;
  esac
}

__enver_get_path_list () {
  local expl
  declare -a values

  values=($(enver --cmdlist))

  _wanted values expl 'get' compadd $values
}

compdef _enver enver