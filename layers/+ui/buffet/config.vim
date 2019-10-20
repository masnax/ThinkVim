let g:buffet_tab_icon = "\uf00a"
function! g:BuffetSetCustomColors()
    hi! BuffetTab guifg=#3c3836 guibg=#fe8019
    hi! BuffetCurrentBuffer cterm=reverse ctermbg=237 ctermfg=246 gui=reverse guibg=#3c3836 guifg=#a89984
    hi! BuffetActiveBuffer cterm=reverse ctermfg=237 ctermbg=246 gui=reverse guibg=#3c3836 guifg=#a89984
    hi! BuffetBuffer cterm=reverse ctermfg=246 ctermbg=246 gui=reverse guifg=#3c3836 guibg=#a89984



endfunction
