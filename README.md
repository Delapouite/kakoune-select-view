# kakoune-select-view

[kakoune](http://kakoune.org) command to select the visible part of a buffer.

## Install

Add `select-view.kak` to your autoload dir: `~/.config/kak/autoload/`.

Or via [plug.kak](https://github.com/andreyorst/plug.kak):

```
plug 'delapouite/kakoune-select-view' %{
  # Suggested mappings
  map global normal <a-%> ': select-view<ret>' -docstring 'select view'
  map global view s '<esc>: select-view<ret>' -docstring 'select view'
}
```

## Usage

Sometimes you need to edit multiple occurrences of text that seat right under
your nose but are distributed in such a way that they are impossible to quickly
select using classic text objects.

Also, you can't rely on the `%` primitive (select whole buffer), because it would
expand your focus of action too far away and include portions of the buffer you
don't want to change.

As its name implies, the `select-view` command answers this problematic by only
selecting the visible part of the buffer.

It takes care of the `scrolloff` value which means it may scroll the buffer slightly.

## See also

- [kakoune-phantom-selection](https://github.com/occivink/kakoune-phantom-selection)
- [kakoune-vertical-selection](https://github.com/occivink/kakoune-vertical-selection)
- [kakoune-text-objects](https://github.com/Delapouite/kakoune-text-objects)

## Licence

MIT

Thanks a lot to [alex](https://github.com/alexherbo2) for the original implementation on IRC 
