vim.cmd('let g:nvcode_termcolors=256')
vim.cmd('colorscheme ' .. O.colorscheme)
vim.cmd('hi Normal guibg=NONE ctermbg=NONE') -- Make substitution work in realtime
