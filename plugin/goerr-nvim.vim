" if exists('g:loaded_goerr_nvim') | finish | endif " prevent loading file twice

" let s:save_cpo = &cpo " save user coptions
" set cpo&vim " reset them to defaults

" command to run our plugin
" command! Whid lua require'whid'.whid()

" let &cpo = s:save_cpo " and restore after

" function g:Goerrfoldtxt()
"     return '53'
"     " return lua GoErrFoldTxt(vim.api.nvim_get_current_buffer(), vim.v.foldstart, vim.v.foldend)
" endfunction
" set foldtext=g:Goerrfoldtxt()

" unlet s:save_cpo

" let g:loaded_goerr_nvim = 1

set foldtext=MyFoldText()
function MyFoldText()
    call luaeval('call requrie("goerr-nvim")')
    return luaeval('_G.GoErrFoldTxt(vim.api.nvim_get_current_buf())')
endfunction

