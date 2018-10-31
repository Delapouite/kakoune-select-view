# to restore the value afterwards
declare-option -hidden str _scrolloff

define-command select-view -docstring 'select visible part of buffer' %{
  set-option window _scrolloff %opt{scrolloff}
  set-option window scrolloff 0,0

  execute-keys gtGbGl

  hook window -once NormalKey .* %{
    set-option window scrolloff %opt{_scrolloff}
  }
}

# Suggested mapping

#map global normal <a-%> ': select-view<ret>' -docstring 'select view'
#map global view s '<esc>: select-view<ret>' -docstring 'select view'
