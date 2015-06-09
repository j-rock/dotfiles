autocmd Filetype Haskell call SetHaskellOptions()
function SetHaskellOptions()
    let g:haskell_conceal = 0
    let g:haskell_hsp = 0

    setlocal omnifunc=necoghc#omnifunc

    hi ghcmodType ctermbg=blue
    let g:ghcmod_type_highlight = 'ghcmodType'
    map <C-l> :GhcModTypeClear<CR>
    map <C-m> :GhcModType<CR>
    map <C-k> :GhcModCheck<CR>
    map <C-j> :GhcModLint<CR>
endfunction
