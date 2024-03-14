function fish_prompt
    # Your prompt setup code here

    # Example prompt with new line after each chain
    for segment in (chain)
        echo -n "$segment"
        # Add a new line with ⋊> ~ after each chain segment
        echo (set_color normal) '⋊> ~'
    end
end
