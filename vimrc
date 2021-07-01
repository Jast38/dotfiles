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
    set textwidth=90
    set path+=**

" local leader
    let maplocalleader = "\\"

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
		Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
		Plugin 'Xuyuanp/nerdtree-git-plugin'
        Plugin 'xuhdev/vim-latex-live-preview'
       	Plugin 'SirVer/ultisnips'
       	Plugin 'honza/vim-snippets'
       	Plugin 'mg979/vim-xtabline'
        Plugin 'mboughaba/i3config.vim'
        Plugin 'iamcco/markdown-preview.nvim'
        Plugin 'neoclide/coc.nvim'
        Plugin 'phaazon/hop.nvim'
        Plugin 'frazrepo/vim-rainbow'
        Plugin 'Konfekt/FastFold'
        Plugin 'tmhedberg/SimpylFold'
        "Plugin 'nvim-lua/popup.nvim'
        "Plugin 'nvim-lua/plenary.nvim'
        "Plugin 'nvim-telescope/telescope.nvim'

	call vundle#end()
"End of vundle part

" Colorscheme
	colorscheme gruvbox
	set background=dark
	let g:gruvbox_termcolors=16
	
	let g:airline_powerline_fonts = 1
	let g:Powerline_symbols='fancy'

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

    let g:tex_flavor = 'latex'
	let g:vimtex_view_general_viewer = 'zathura'
	let g:vimtex_view_method = 'zathura'
    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

    "TOC Settings
    let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['content', 'todo', 'include'],
      \ 'resize' : 1,
      \ 'split_width' : 50,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 2,
      \}

" nerdtree
	map <C-n> :NERDTreeToggle<CR>
	"quit when no other tabs are open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let NERDTreeMinimalUI = 1	
	let NERDTreeDirArrows = 1

"latex-live-preview
    let g:livepreview_previewer = 'zathura'
    let g:livepreview_use_biber = '1'

"utilsnips
    let g:UltiSnipsExpandTrigger="<C-e>"
    let g:UltiSnipsJumpForwardTrigger="<C-b>"
    let g:UltiSnipsJumpBackwardTrigger="<C-z>"

"rainbow brackets
    let g:rainbow_active = 1

"custom keybinds
    noremap <C-k> 5k
    noremap <C-j> 5j
    " copy to system clipboard
    noremap <C-c> "+y e

    "navigate splits
    noremap == <C-w><C-w>
