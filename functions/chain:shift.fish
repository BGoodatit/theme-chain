function chain:shift -a command -d 'Like chain:push, but inserts link at the bottom'
  # Add the command to the global list of links.
  set -g __chain_links "$command" $__chain_links

  # If the user runs this command, recompile the prompt for them so that their changes are immediately visible.
  if test "$_" = chain:shift
    chain:compile
  end
end
