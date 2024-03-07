function fish_right_prompt
    # Git branch and state with symbol
    set git_branch (command git branch --show-current 2>/dev/null)
    if test -n "$git_branch"
        set git_status (command git status --porcelain=v1 2>/dev/null | wc -l)
        if test "$git_status" -gt 0
            set git_state "[]"
        else
            set git_state ""
        end
        echo -n "~ on  $git_branch $git_state "
    end

    # Node.js version with symbol
    set node_version (node --version 2>/dev/null | sed 's/^v//')
    if test -n "$node_version"
        echo -n "via  v$node_version "
    end

    # Python version with symbol
    set python_version (python3 --version 2>/dev/null | string match -r 'Python \K[^\s]+' | string trim)
    if test -n "$python_version"
        echo -n "via 🐍 v$python_version "
    end

    # Ruby version with symbol (Placeholder for Ruby version extraction)
    # This is a placeholder. Update this section with the actual command to get Ruby version if required.
    set ruby_version '3.1.3' # Placeholder version
    if test -n "$ruby_version"
        echo -n "via 💎 v$ruby_version "
    end
end
end
