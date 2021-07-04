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
		"Plugin 'sheerun/vim-polyglot'
		"Plugin 'scrooloose/nerdtree'
		"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
		"Plugin 'Xuyuanp/nerdtree-git-plugin'
        Plugin 'xuhdev/vim-latex-live-preview'
       	Plugin 'SirVer/ultisnips'
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
        Plugin 'nvim-telescope/telescope-fzf-native.nvim'
        Plugin 'fannheyward/telescope-coc.nvim'

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
"coc
    autocmd CursorHold * silent call CocActionAsync('highlight')


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
    "coc
    nmap <leader>gd <Plug>(coc-definition)
    nmap <leader>gr <Plug>(coc-references)
    let g:coc_user_config = {}
    let g:coc_user_config['coc.preferences.jumpCommand'] = 'vsp'
    "navigate splits
    noremap = <C-w><C-w>
    nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>
    nnoremap <C-p> :MarkdownPreview

"****************************************************
"Markdown Preview Recommended Settings
"****************************************************
    " set to 1, nvim will open the preview window after entering the markdown buffer
    " default: 0
    let g:mkdp_auto_start = 0
    
    " set to 1, the nvim will auto close current preview window when change
    " from markdown buffer to another buffer
    " default: 1
    let g:mkdp_auto_close = 1 
    
    " set to 1, the vim will refresh markdown when save the buffer or
    " leave from insert mode, default 0 is auto refresh markdown as you edit or
    " move the cursor
    " default: 0
    let g:mkdp_refresh_slow = 0
    
    " set to 1, the MarkdownPreview command can be use for all files,
    " by default it can be use in markdown file
    " default: 0
    let g:mkdp_command_for_global = 1 
    
    " set to 1, preview server available to others in your network
    " by default, the server listens on localhost (127.0.0.1)
    " default: 0
    let g:mkdp_open_to_the_world = 0
    
    " use custom IP to open preview page
    " useful when you work in remote vim and preview on local browser
    " more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
    " default empty
    let g:mkdp_open_ip = ''
    
    " specify browser to open preview page
    " default: ''
    let g:mkdp_browser = ''
    
    " set to 1, echo preview page url in command line when open preview page
    " default is 0
    let g:mkdp_echo_preview_url = 0
    
    " a custom vim function name to open preview page
    " this function will receive url as param
    " default is empty
    let g:mkdp_browserfunc = ''
    
    " options for markdown render
    " mkit: markdown-it options for render
    " katex: katex options for math
    " uml: markdown-it-plantuml options
    " maid: mermaid options
    " disable_sync_scroll: if disable sync scroll, default 0
    " sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
    "   middle: mean the cursor position alway show at the middle of the preview page
    "   top: mean the vim top viewport alway show at the top of the preview page
    "   relative: mean the cursor position alway show at the relative positon of the preview page
    " hide_yaml_meta: if hide yaml metadata, default is 1
    " sequence_diagrams: js-sequence-diagrams options
    " content_editable: if enable content editable for preview page, default: v:false
    " disable_filename: if disable filename header for preview page, default: 0
    let g:mkdp_preview_options = {
        \ 'mkit': {},
        \ 'katex': {},
        \ 'uml': {},
        \ 'maid': {},
        \ 'disable_sync_scroll': 0,
        \ 'sync_scroll_type': 'middle',
        \ 'hide_yaml_meta': 1,
        \ 'sequence_diagrams': {},
        \ 'flowchart_diagrams': {},
        \ 'content_editable': v:false,
        \ 'disable_filename': 0
        \ }
    
    " use a custom markdown style must be absolute path
    " like '/Users/username/markdown.css' or expand('~/markdown.css')
    let g:mkdp_markdown_css = ''
    
    " use a custom highlight style must absolute path
    " like '/Users/username/highlight.css' or expand('~/highlight.css')
    let g:mkdp_highlight_css = ''
    
    " use a custom port to start server or random for empty
    let g:mkdp_port = ''
    
    " preview page title
    " ${name} will be replace with the file name
    let g:mkdp_page_title = '「${name}」'
    
    " recognized filetypes
    " these filetypes will have MarkdownPreview... commands
    let g:mkdp_filetypes = ['markdown']

