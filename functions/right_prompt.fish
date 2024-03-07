function fish_right_prompt
    # Git branch and state
    set git_branch (command git branch --show-current 2>/dev/null)
    if test -n "$git_branch"
        set git_status (command git status --porcelain=v1 2>/dev/null | wc -l)
        if test "$git_status" -gt 0
            set git_state "[?]"
        else
            set git_state ""
        end
        echo -n "on  $git_branch $git_state "
    end

    # Node.js version
    set node_version (node --version 2>/dev/null | sed 's/^v//')
    if test -n "$node_version"
        echo -n "via  v$node_version "
    end

    # Python version
    set python_version (python3 --version 2>/dev/null | string match -r 'Python \K[^\s]+' | string trim)
    if test -n "$python_version"
        echo -n "(python v$python_version) "
    end
end