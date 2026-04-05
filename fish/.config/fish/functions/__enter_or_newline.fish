function __enter_or_newline
    if test -z (commandline)
        printf '\n'
    end
    commandline -f execute
end
