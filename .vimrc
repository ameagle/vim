" Basic {
	set encoding=utf8
	if !has("gui_running")
		set t_Co=256
	endif
	let mapleader=","
" }



" Productivity {
	set ttyfast
	set lazyredraw
	set noswapfile
	set autoread
	set nobackup
	set nowritebackup
" }


" BundleVundle {
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	":PluginInstall
	Plugin 'vim-airline/vim-airline'
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'tpope/vim-commentary'
	Plugin 'tpope/vim-fugitive'
	call vundle#end()
	filetype plugin indent on
" }


" Indentation {
	set shiftround
	set tabstop=4
	set shiftwidth=4
	set smarttab
	set expandtab
	set autoindent
	set smartindent
    set noet ci pi sts=0
" }


" Search {
	set hlsearch
	set incsearch
	set ignorecase
" }


" Interface, colors, text {
	syntax enable
	" Text {
	set wrap
	" }
	" Colors {
	"set background=dark
	"colorscheme xoria256
	colorscheme elflord
	"hi Visual term=reverse cterm=reverse guibg=Grey
	" }
	" Interface {
	set cursorline
	"set number
	set mousehide
	set wildmenu
	set title
	set showmode
	set showcmd
	set laststatus=2
	set ruler
	" }
" }


" Plugins {
	" NERDTree {
	let NERDTreeShowHidden=1
	let NERDTreeHighlightCursorline=0
	" }
	" Startify {
	let g:startify_bookmarks = ['~/.vimrc',]
	" }
	" Airline {
	let g:airline_theme='dark'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline_left_sep = ''
	let g:airline_right_sep = ''
	let g:airline_section_y = 'BUF: %n'
	function! CustomBranchFormat(name)
		return 'Git: '.a:name
	endfunction
	let g:airline#extensions#branch#format='CustomBranchFormat'
	" }
	" Commantry {
	":help commentary
	"gc {motion} comment or uncomment
	"10 gcc comment or uncomment 10 rows
	":setlocal commentstring=//%s	setcomment // 
	" reload .vimrc :so %
" }
let g:indentLine_enabled = 0


" Custom {
	set hidden  " if on buffers shos in NERDTree in new window, no split if modiffied
	map <C-X> :bd<CR>
	map <S-z><S-S> :w<CR>
	
	map <S-Z><S-X> :qa<CR>

	map <F2> <C-w>w
	map <C-J> :bprev<CR>
	map <F3> :bprev<CR>
	map <C-K> :bnext<CR>
	"map <tab> :bnext<CR>
	map <F4> :bnext<CR>
	nnoremap <F5> :buffers<CR>:buffer<Space>
	"map <F6> :Te<CR>

	"Move Line or Selection up and down
	nnoremap <F6> :m .+1<CR>==
	nnoremap <F7> :m .-2<CR>==
	inoremap <F6> <Esc>:m .+1<CR>==gi
	inoremap <F7> <Esc>:m .-2<CR>==gi
	vnoremap <F6> :m '>+1<CR>gv=gv
	vnoremap <F7> :m '<-2<CR>gv=gv
	"
	nnoremap <F8> :!%:p<CR>
	
	map <C-L> :NERDTreeToggle<CR>
	map <F9> :NERDTreeToggle<CR>
	
	set pastetoggle=<F10> " to paste from OS buffer
	nnoremap <F11> :set invnumber<CR>
	nnoremap gd :setlocal commentstring=//%s
	nnoremap <F12> :NERDTreeFind<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


	"":Te -- open explorer in new windo>w
	":vs --new buffer; ctrl-w --move ; ctrl-c close; 10 ctrl-w >--bigger
	"new --new buff
	"S-R update current tree node
	"":e .
	"/\c ---search ignoring case
	"" Shift v block ; = make code betteri formated
	"C-v block S-i # Esc Esc
	"gv x ---take sign off (gv last selection)
	". repeat last command
	"@: --repeat last command in cmd 
	"q: --search in vim commands in history (in normal mode) ; big list ":his" --show 
	"S -v block move to right >; left < ;; line S->>
	"yw in insert mode C-o p --paste text
	":so %  reload  .vimrc
	"u --undo C-r --redo; A --insert at the end of line
	"dddd
	"S-@ : ---last command in Command Line
	"S-m -goto Middle; S-h -goto up; S-l -goto end of screen
	"
" }
