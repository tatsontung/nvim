nnoremap <silent> <C-p> :Commentary<CR>
vnoremap <silent> <space>/ :Commentary<CR>
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
