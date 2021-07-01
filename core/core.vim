" version info of thinkvim
let g:thinkvim_version = "2.4.5"

if &compatible
	" vint: -ProhibitSetNoCompatible
	set nocompatible
	" vint: +ProhibitSetNoCompatible
endif

" Set main configuration directory as parent directory
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
let $THINKVIM = expand($HOME.'/.thinkvim.d')

" set the user config file
let s:user_init_config = expand($THINKVIM.'/init.vim')

" Disable vim distribution plugins
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1

let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1

let g:loaded_matchit = 1
"let g:loaded_matchparen = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

" Initialize base requirements
if has('vim_starting')
	" Global Mappings "{{{
	" Use spacebar as leader and ; as secondary-leader
	" Required before loading plugins!
	let g:mapleader="\<Space>"
	let g:maplocalleader=';'

	" Release keymappings prefixes, evict entirely for use of plug-ins.
	nnoremap <Space>  <Nop>
	xnoremap <Space>  <Nop>
	nnoremap ,        <Nop>
	xnoremap ,        <Nop>
	nnoremap ;        <Nop>
	xnoremap ;        <Nop>

endif

call utils#source_file($VIM_PATH,'core/packman.vim')
call utils#source_file($VIM_PATH,'core/general.vim')
call utils#source_file($VIM_PATH,'core/filetype.vim')

" Load user init config
call utils#check_source(s:user_init_config)
call utils#source_file($VIM_PATH,'keybinds/leaderkey.vim')
call utils#source_file($VIM_PATH,'keybinds/motion.vim')

" Initialize user favorite colorscheme
call theme#init()
call utils#source_file($VIM_PATH,'core/color.vim')

" Generate coc-settings.json
call utils#generate_coc_json()
"colorscheme gruvbox9
colorscheme tangerine
unmap ;
":so /Users/max/.vim/custom/colors.vim
" set laststatus=2
set cursorline
autocmd BufNewFile,BufRead *.ys set syntax=asm
:command! WQ wq
:command! Wq wq
:command! W  w
:command! Q  q
":command Whitespace :%s/\s\+$//e
":command Sync :syntax sync fromstart
:noremap z( /(<CR> zfa) :noh<CR>
:noremap z{ /{<CR> zfa} :noh<CR>
"cnoreabbrev tree NERDTree
:noremap ;; :NERDTree<CR>
:noremap '' :Vista<CR>
:noremap <tab><tab> <C-w>
nmap  <C-M> <Plug>SearchantStop
map <C-X> <Nop>
unmap <C-X>
:so /Users/max/.vim/custom/airline.vim
:noremap << :vert res -40<CR>
:noremap >> :vert res +40<CR>
map ' <Nop>
map ; <Nop>
:noremap ;' :tabnext<CR>
:noremap '; :tabprev<CR>

nmap gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <space><space> :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <space>z :call CocActionAsync('jumpTypeDefinition', 'tab drop')<CR>
nmap <space>x :call CocActionAsync('jumpImplementation', 'tab drop')<CR>
nmap <space>c :call CocActionAsync('jumpReferences', 'tab drop')<CR>

nmap gd :CocCommand git.chunkUndo<CR>
nmap gu :CocCommand git.chunkUndo<CR>

":set mmp=2000

function! Start_New_Tab(path)
	execute 'tabnew %:h/' . a:path
endfunction
:command! -nargs=1 TT :call Start_New_Tab(<f-args>)

"let g:airline_theme='gruvbox'
let g:airline_theme='atomic'
set secure




" vim: set ts=2 sw=2 tw=80 noet :
