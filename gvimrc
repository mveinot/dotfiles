if has("gui_macvim")
  " map Command-T to the Command-T plugin
  macmenu &File.New\ Tab key=<nop>
  "map <D-t> <Plug>PeepOpen
  map <D-t> :CommandT<CR>
endif

set guifont=Monaco:h12

set guioptions-=T " Start without the toolbar
set guioptions-=L " Don't use a left-hand scrollbar
