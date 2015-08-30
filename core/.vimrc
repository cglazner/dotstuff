syntax enable
set smartindent
set expandtab
set nu
set splitright
set splitbelow
set nohlsearch
set tabstop=4
set shiftwidth=4
set hidden
set ignorecase
set undofile
set undodir=$HOME/.vimundodir
set nocompatible

filetype on

"  go back to last edited position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
au BufRead,BufNewFile * if &ft=='make' | set lcs=tab:>- | set list | endif
au BufReadPost * if &key!="" | set viminfo= | set nobackup | set noswapfile | set nowritebackup| endif 

colors desert
hi StatusLine	guibg=yellow guifg=black gui=none
hi StatusLineNC	guibg=yellow guifg=grey50 gui=none
hi Title	guifg=yellow
hi ModeMsg	cterm=NONE ctermfg=3
hi Visual	ctermfg=yellow
hi Comment	cterm=bold ctermfg=4
hi PreProc	cterm=bold ctermfg=4
hi Special	cterm=bold ctermfg=4
hi Constant	ctermfg=red
hi Directory	ctermfg=4 cterm=bold
hi Identifier	ctermfg=4 cterm=bold

" Mysteries
map K <nop>
" shelved until no-remapped (annoying)
"nmap <C-[> :pop<CR>
"

