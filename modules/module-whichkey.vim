let g:which_key_map =  {}
let g:which_key_localmap =  {
  \ 'name' : 'LocalLeader'
  \ }
let g:which_key_map = {
      \ 'name' : 'Leader' ,
      \ '1' : 'select window-1'      ,
      \ '2' : 'select window-2'      ,
      \ '3' : 'select window-3'      ,
      \ '4' : 'select window-4'      ,
      \ '5' : 'select window-5'      ,
      \ '6' : 'select window-6'      ,
      \ '7' : 'select window-7'      ,
      \ '8' : 'select window-8'      ,
      \ '9' : 'select window-9'      ,
      \ '0' : 'select window-10'      ,
      \ 'b' : {
            \ 'name' : '+buffer',
            \ 'b' : 'buffer list',
            \ 'c' : 'keep current buffer',
            \ 'x' : 'remove all buffers',
            \ },
      \ 'p' : {
            \ 'name' : '+plugin manage',
            \ 'u' : 'update all plugins',
            \ 'r' : 'reache runtime path',
            \ 'l' : 'plugins update log',
            \ },
      \ 'e' : 'open file explorer' ,
      \ ';' : 'coc extensions',
      \ '-' : 'choose window by prompt' ,
      \ ',' : 'Run coclist command' ,
      \ '<Tab>' :'switch to last buffer',
      \ 'g' : {
            \ 'name' : '+versioncontrol',
            \ 'a' : 'git add',
            \ 'd' : 'git diff split',
            \ 'c' : 'git commit',
            \ 'b' : 'git blame',
            \ 'f' : 'git fetch',
            \ 'g' : 'Magit Status',
            \ 'i' : 'show chunk diff at point',
            \ 'm' : 'show commit contains at point',
            \ 'p' : 'git Push',
            \ 's' : 'git status',
            \ 'z' : 'lazygit',
            \ },
      \ 'G' : 'distraction free writing' ,
      \ 'F' : 'open current file on filetree' ,
      \ 'f' : {
            \ 'name' : '+find-everything',
            \ 'a' : 'find word',
            \ 'e' : 'find explorer',
            \ 'f' : 'find file',
            \ 'h' : 'find history',
            \ 'g' : 'find files with git',
            \ 'w' : 'find current word',
            \ 'W' : 'find windows',
            \ 'l' : 'find locationlist',
            \ 'u' : 'find uncommitted files',
            \ 'z' : 'find word on multiple files',
            \ 'v' : 'find visual select',
            \ },
      \ 'i' : 'Show symbols list' ,
      \ 'o' : {
            \ 'name' : '+open',
            \ 'c' : 'open personal config',
            \ 't' : 'open a temrinal',
            \ 's' : 'open stratify',
            \ 'm' : 'open markdown preview',
            \ },
      \ 'm' : 'open mundotree' ,
      \ 'j' : 'open coc-explorer',
      \ 'x' : 'coc cursors operate',
      \ 'c'    : {
              \ 'name' : '+code' ,
              \ 'a'    : 'Lsp CodeActionSelected',
              \ 'e'    : 'Lsp Show Diagnostics',
              \ 'd'    : 'Lsp Show Document',
              \ 'j'    : 'Show definition references',
              \ 'i'    : 'Lsp Find implementation',
              \ 'r'    : 'Lsp Rename',
              \ 'f'    : 'Lsp Format',
              \ 'F'    : 'Lsp auto fix current line',
              \ 'n'    : 'Default action for next',
              \ 'p'    : 'Default action for prev',
              \ 's'    : 'Lsp Show Isymbols',
              \ 'w'    : 'Delete trailing whitespace',
              \ 'R'    : 'Quick run code',
              \ 'o'    : 'LSP Organize imports',
              \ },
      \ 'q' : {
            \ 'name' : '+quiet',
            \ 'q' : 'save and quiet',
            \ 'w' : 'quiet without save',
            \ },
      \ 'r' : {
            \ 'name' : '+repl',
            \ 'r' : 'Open Repl',
            \ 'q' : 'Exit Repl',
            \ 'l' : 'Send line',
            \ 'p' : 'Repl repeat',
            \ 'c' : 'Repl clear',
            \ '<CR>': 'Repl return',
            \ '<Esc>': 'Repl interrupt',
            \ },
      \ 's' : {
            \ 'name' : '+session',
            \ 's' : 'Save session',
            \ 'l' : 'Load session',
            \ },
      \ 't' : {
            \ 'name' : '+toggle',
            \ 'i' : 'Indentline toggle',
            \ 'c' : 'Change colorscheme',
            \ 'n' : 'Toggle line number',
            \ 's' : 'Toggle spell check',
            \ },
      \ 'w'    : {
              \ 'name' : '+window' ,
              \ 's'    : 'horizontally split',
              \ 'v'    : 'vertical split',
              \ 'h'    : 'jump left window',
              \ 'j'    : 'jump bottom window',
              \ 'k'    : 'jump top window',
              \ 'l'    : 'jump right window',
              \ 'H'    : 'move window to left',
              \ 'J'    : 'move window to bottom',
              \ 'K'    : 'move window to top',
              \ 'L'    : 'move window to right',
              \ 'x'    : 'swap window',
              \ 'c'    : 'close window',
              \ 'o'    : 'close other window',
              \ 'R'    : 'spin window',
              \ },
      \ }

" let g:which_key_map[' '] = {
"      \ 'name' : '+easymotion jumpto word ' ,
"      \ 'b' : ['<plug>(easymotion-b)' , 'beginning of word backward'],
"      \ 'f' : ['<plug>(easymotion-f)' , 'find {char} to the left'],
"      \ 'w' : ['<plug>(easymotion-w)' , 'beginning of word forward'],
"      \ }

function! WhichKeyForGo() abort
  let g:which_key_localmap.g ={
        \ 'name' : '+golang-toolkit',
        \ 'i'    : 'go impl',
        \ 'd'    : 'go describe',
        \ 'c'    : 'go callees',
        \ 'C'    : 'go callers',
        \ 's'    : 'go callstack',
        \ }
endfunction

function! WhichKeyForGoDebug() abort
  let g:which_key_map.d ={
    \ 'name' : 'Debugger',
    \ 'a'    : 'Add or Remove BreakPoint',
    \ 'b'    : 'Add or Remove TracePoint',
    \ 'c'    : 'Clear All Point',
    \ 'd'    : 'Start Debug',
    \ 't'    : 'Start Debug Test',
    \ 'r'    : 'Remove BreakPoint',
    \ 'R'    : 'Remove TracePoint',
    \ }
endfunction

autocmd FileType go
                    \ call WhichKeyForGo() |
                    \ call WhichKeyForGoDebug()

