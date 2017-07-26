# to restore the value afterward
decl -hidden str _scrolloff

def select-view -docstring 'select visible part of buffer' %{
  set window _scrolloff %opt{scrolloff}
  set window scrolloff 0,0

  # goto fiesta top → bottom → right
  exec gtGBGl

  # one shot hook, 'PromptEnd'
  hook window -group select-view NormalKey .* %{
    set window scrolloff %opt{_scrolloff}
    rmhooks window select-view
  }
}

# Suggested mapping

#map global normal <a-%> :select-view<ret> -docstring 'select view'
