hi Comment cterm=italic
syntax on
set t_Co=256                            " Support 256 colors
set background=dark
colorscheme gruvbox

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
