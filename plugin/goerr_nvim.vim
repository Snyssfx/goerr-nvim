augroup goerr_nvim_go_ft
autocmd!
autocmd FileType go silent! execute 'g/if err != nil {/silent execute("normal zcgg")'
autocmd FileType go setlocal foldtext=goerr_nvim#foldtext()
" also remove distracting dots in fold names (replace to spaces)
autocmd FileType go setlocal fillchars=fold:\ 
augroup END

lua require("goerr-nvim")

function! goerr_nvim#foldtext()
    return luaeval('_G.GoErrFoldTxt(vim.api.nvim_get_current_buf())')
endfunction
