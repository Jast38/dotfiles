"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"    let &packpath = &runtimepath
"    source ~/.vimrc
" Basics
	set nocompatible
	set encoding=utf-8
	syntax on
	set backspace=indent,eol,start
	set expandtab
	set tabstop=4
	set shiftwidth=4
    set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/lua
	set number relativenumber
	set splitbelow
	set splitright
    set textwidth=90
    set path+=**
    filetype off

" local leader
    let mapleader = "\<space>"

" start of vundle part 
	set rtp+=~/.config/nvim/bundle/Vundle.vim
	call vundle#begin("~/.config/nvim/bundle")

		Plugin 'VundleVim/Vundle.vim'
		Plugin 'lervag/vimtex'
		Plugin 'vim-airline/vim-airline'
		Plugin 'vim-airline/vim-airline-themes'
		Plugin 'morhetz/gruvbox'
		Plugin 'sheerun/vim-polyglot'
		"Plugin 'scrooloose/nerdtree'
		"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
		"Plugin 'Xuyuanp/nerdtree-git-plugin'
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
        Plugin 'nvim-lua/popup.nvim'
        Plugin 'nvim-lua/plenary.nvim'
        Plugin 'nvim-telescope/telescope.nvim'
        Plugin 'nvim-telescope/telescope-fzy-native.nvim'

	call vundle#end()
"End of vundle part
	filetype plugin indent on

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
    let g:vimtex_compiler_progname = 'nvr'
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
	"map <C-n> :NERDTreeToggle<CR>
	""quit when no other tabs are open
	"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	"let NERDTreeMinimalUI = 1	
	"let NERDTreeDirArrows = 1

"latex-live-preview
    let g:livepreview_previewer = 'zathura'
    let g:livepreview_use_biber = '1'

"utilsnips
    let g:UltiSnipsExpandTrigger="<C-e>"
    let g:UltiSnipsJumpForwardTrigger="<C-b>"
    let g:UltiSnipsJumpBackwardTrigger="<C-z>"

"rainbow brackets
    let g:rainbow_active = 1

" Telesope fuzzy finder
    nnoremap <leader>ff :lua require'jast.telescope'.find_files(require('telescope.themes').get_dropdown({}))<cr>
    nnoremap <leader>fg :lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>
    nnoremap <leader>fb :lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({}))<cr>

    nnoremap <C-n> :lua require'jast.telescope'.file_browser(require('telescope.themes').get_dropdown({}))<cr>
    nnoremap <C-m> :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_dropdown({}))<cr>
    "Git commands
    nnoremap <leader>g :lua require'telescope.builtin'.git_status(require('telescope.themes').get_dropdown({}))<cr>
    nnoremap <leader>gc :lua require'telescope.builtin'.git_commits(require('telescope.themes').get_dropdown({}))<cr>
    " own functions
    nnoremap <leader>gb :lua require'jast.telescope'.git_branches(require('telescope.themes').get_dropdown({}))<cr>
    nnoremap <leader>vrc :lua require'jast.telescope'.search_dotfiles(require('telescope.themes').get_dropdown({}))<cr>

"custom keybinds
    noremap <C-k> 5k
    noremap <C-j> 5j
    noremap <C-h> 5h
    noremap <C-l> 5l
    " copy to system clipboard
    noremap <C-c> "+y e

    "navigate splits
    noremap == <C-w><C-w>
