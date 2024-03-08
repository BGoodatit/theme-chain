function chain.links.pwd
  # Use the specific symbol as the prefix instead of @username
  set chain_project_glyph '><> ~ '

  set -l path "$PWD"

  # Replace HOME with ~ without abbreviating other parts of the path.
  set path (string replace -r $HOME '~' "$path")

  echo cyan
  echo "$chain_project_glyph$path"
end
  echo "$prefix$path"
end
