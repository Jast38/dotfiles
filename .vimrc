" Basics

	set nocompatible
	filetype plugin on
	set encoding=utf-8
	syntax on
	set backspace=indent,eol,start
	filetype plugin indent on
	set expandtab
	set tabstop=4
	set shiftwidth=4
	set runtimepath+=~/.vim_runtime
	set number relativenumber
	set splitbelow
	set splitright



" start of vundle part 
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

		Plugin 'VundleVim/Vundle.vim'
		Plugin 'lervag/vimtex'
		Plugin 'vim-airline/vim-airline'
		Plugin 'vim-airline/vim-airline-themes'
		Plugin 'morhetz/gruvbox'
		Plugin 'sheerun/vim-polyglot'
		Plugin 'scrooloose/nerdtree'
		Plugin 'Xuyuanp/nerdtree-git-plugin'

	call vundle#end()
"End of vundle part

" Colorscheme
	colorscheme gruvbox
	set background=dark
	let g:gruvbox_termcolors=16
	
	let g:airline_powerline_fonts = 1
	let g:Powerline_symbols='unicode'

	    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '㏑'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ''

    hi Normal guibg=NONE ctermbg=NONE
" vimtex

	let g:vimtex_view_general_viewer = 'zathura'
	let g:vimtex_view_method = 'zathura'

" nerdtree
	map <C-n> :NERDTreeToggle<CR>
	"quit when no other tabs are open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let NERDTreeMinimalUI = 1	
	let NERDTreeDirArrows = 1
