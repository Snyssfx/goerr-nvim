" if exists('g:loaded_goerr_nvim') | finish | endif " prevent loading file twice

" let s:save_cpo = &cpo " save user coptions
" set cpo&vim " reset them to defaults

" command to run our plugin
" command! Whid lua require'whid'.whid()

" let &cpo = s:save_cpo " and restore after

" unlet s:save_cpo

augroup goerr_nvim_go_ft
autocmd!
autocmd FileType go silent! execute 'g/if err != nil/silent execute("normal zcgg")'
autocmd FileType go setlocal foldtext=g:MyFoldText()
" also remove distracting dots in fold names (replace to spaces)
autocmd FileType go setlocal fillchars=fold:\ 
augroup END

lua require("goerr-nvim")

function! g:MyFoldText()
    return luaeval('_G.GoErrFoldTxt(vim.api.nvim_get_current_buf())')
endfunction

" let g:loaded_goerr_nvim = 1
