call plug#begin('~/.config/nvim/plugged/')
" --**- PLUGIN LIST -**--

" -- Autocompletion --
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'sudar/vim-wordpress-snippets'
Plug 'tpope/vim-surround'

" -- Appearance --
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'W0ng/vim-hybrid'
Plug 'jnurmine/Zenburn'
Plug 'kamwitsta/flatwhite-vim'
Plug 'tpope/vim-vividchalk'
Plug 'reedes/vim-colors-pencil'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim'
Plug 'albertorestifo/github.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'raimondi/delimitmate'
Plug 'takac/vim-fontmanager'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-obsession'
Plug 'haishanh/night-owl.vim'

"Documentación
Plug 'Keith/investigate.vim'
"Plug 'rizzatti/dash'
Plug 'hecal3/vim-leader-guide'
Plug 'lervag/vimtex'

" navigation
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'jlanzarotta/bufexplorer'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bruno-/vim-husk'
Plug 'will133/vim-dirdiff'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" folds
Plug 'tmhedberg/SimpylFold'
" SCSS / CSS
Plug 'ap/vim-css-color'
Plug 'gko/vim-coloresque'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'

" php
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
"Plug 'joonty/vim-phpqa.git'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'phpactor/phpactor', { 'do': ':call phpactor#Update()', 'for': 'php'}
let g:phpactor_executable = '~/.config/nvim/plugged/phpactor/bin/phpactor'

" general web/dev
Plug 'sheerun/vim-polyglot'
Plug 'Rip-Rip/clang_complete'
Plug 'godlygeek/tabular'
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'tyru/open-browser.vim'
Plug 'eugen0329/vim-esearch'
Plug 'dsawardekar/wordpress.vim'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
"Plug 'hkupty/nvimux'
Plug 'noahfrederick/vim-composer'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'          " Reformat files


"Tmux navigation & Integration
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

" Incremental search
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'bumaociyuan/vim-matchit'

" " Terminal Integration
" Plug 'wincent/terminus'
Plug 'kassio/neoterm'
" Plug 'brettanomyces/nvim-terminus'
Plug 'airodactyl/neovim-ranger'

Plug 'jceb/vim-orgmode'
Plug 'henrik/vim-open-url'

""------Deoplete-----"
 if has('nvim')
Plug 'Shougo/deoplete.nvim',  { 'do': ':UpdateRemotePlugins' }
Plug 'padawan-php/deoplete-padawan', { 'for': 'php' }
"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'autozimu/LanguageClient-neovim', {
                                        \ 'branch': 'next',
                                        \ 'do': 'bash install.sh',
                                        \ }
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs', 'for': 'php'}

else
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" *------= Appearance     =-------* "

" ====== theme options =====
if has('gui_running')
set background=dark
colorscheme gruvbox "solarized pyte pencil vividchalk PaperColor
else
colorscheme gruvbox "night-owl PaperColor oceanlight pencil vividchalk PaperColor desert molokai dracula industry
set background=dark
endif

" Font options
if has("gui_running") || has("gui_gtk2") || has("gui_gtk3")
set guifont=Inconsolata\ for\ Powerline 13
elseif has("gui_photon")
set guifont=Inconsolata:s12
elseif has("gui_kde")
set guifont=Courier\ New/12/-1/5/50/0/0/0/1/0
"elseif has("x11") i
"    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
else
"set guifont=Inconsolata\ for\ Powerline\ 13
set guifont=Fira\ Code\ 13
endif

" Always show the cursor set ruler
set clipboard=unnamedplus
" Don't show intro
set splitbelow
"set shortmess=at
"split windows
set splitright
"split navigations

" *----* VISUALS *----*

" Highlight the current line
set cursorline
" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu
" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw
" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch
" Always highlight column 80 so it's easier to see where cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=lightgray
set colorcolumn=80
set mouse=a
" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

"Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#enable#fugitive=1
let g:airline#enable#syntastic=1
let g:airline#enable#bufferline=1

if has('gui_running')
    let g:airline_theme='solarized'
else
    let g:airline_theme='minimalist'
endif

" Change color scheme when diffing
fun! SetDiffColors()
highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColors()

set pumheight=15
"No swap file
set noswapfile
" Command history
set history=500
"Show line number
set number
set relativenumber
set encoding=utf-8

" ===== Search options ======

" Highligth search matches
set hlsearch
"Ignore case when searching
set ignorecase
set wildignorecase
set smartcase
" Incremental searching (search as you type)
set incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Turn off high lighting automaticly

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Fuzzy Searching
function! s:config_fuzzyall(...) abort
  return extend(copy({
  \   'converters': [
  \     incsearch#config#fuzzy#converter(),
  \     incsearch#config#fuzzyspell#converter()
  \   ],
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))
" }}}



" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ackprg = "ag --vimgrep"

" ag.vim (the silver searcher)
let g:ag_working_path_mode="r"
set selection=inclusive

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

" Show incomplete commands
set showcmd
" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces
set expandtab
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Highlight tailint whitespace
set listchars=tab:\ \},trail:.

" Find trailing whitespace
match ErrorMsg '\s\+$'

"Delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Always show status bar
set laststatus=2

" Always display the statusline in all windows
set showtabline=2

" Always display the tabline, even if there is only one tab
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Turn word wrap off
set nowrap
set sidescrolloff=15
set sidescroll=1

" Default Spelling
let g:ctrlp_map = '<c-p>'
setlocal spell spelllang=en_us
set complete+=kspell

" Xtra words / Private dict.
set spellfile=$HOME/.vim/spell/privateDict.utf-8.add

" Switch syntax highlighting on, when the terminal has colors syntax on

"Change spelling highlightning
hi clear SpellBad hi SpellBad cterm=underline "call togglebg#map("<F5>") set lines=36 columns=90 "Window size

" *---* FOLDS *---*
set foldlevel=99
" Close all folds when opening a new buffer
autocmd BufRead * setlocal foldmethod=manual
autocmd BufRead * normal zM
" Enable folding with the space bar
nnoremap <space> zR
set nofoldenable "disable folding

" Language formating
au BufNewFile,BufRead *.py
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix

"php.vim
  let php_htmlInStrings = 1
  let php_parent_error_close = 1
  let php_folding = 0

au BufNewFile,BufRead *.js,*.html,*.css,*.php
\  set tabstop=2
\ | set softtabstop=2
\ | set shiftwidth=2
\ | set autoindent

"" only start lsp when opening php files
" au filetype php LanguageClientStart
let g:LanguageClient_serverCommands = {'php' : ['php', '~/.vim/plugged/LanguageServer-php-neovim/vendor/bin/php-language-server.php']}
"" use LSP completion on ctrl-x ctrl-o as fallback for padawan
au filetype php set omnifunc=LanguageClient#complete
"" no need for diagnostics, we're going to use neomake for that
let g:LanguageClient_diagnosticsEnable  = 0
let g:LanguageClient_signColumnAlwaysOn = 0

autocmd BufWritePost * Neomake
let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
map <c-s> <esc>:w<cr>:Silent php-cs-fixer fix %:p --level=symfony<cr>

"" I only use these 3 mappings (php-autocomplete)
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap K :call LanguageClient_textDocument_hover()<cr>

"------------------------"
"NERDTREE PLUGIN SETTINGS ---added 25/11
"------------------------"
"" Shortcut for NERDTreeToggle
nmap <leader>nt :NERDTreeToggle <CR>
" However, you can also directly open NerdTree on the file you’re editing
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let g:NERDTreeWinSize=20

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" >----->> NerdCommenter Xtra settings

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not

" And here is how to automatically close a tab if the only remaining window is NerdTree
"let g:NERDToggleCheckAllLines = 1
"autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif

" = NeoVim Specific Settings = {{{
" ================================
if has('nvim')
  " = Terminal specific settings = {{{
  " ==================================
  " allow terminal buffer size to be very large
let g:terminal_scrollback_buffer_size = 100000

  " map esc to exit to normal mode in terminal too
tnoremap <Esc> <C-\><C-n>
  " make window commads work in the terminal from the insert mode
tnoremap <c-w> <C-\><C-n><c-w>

augroup terminal_vim
    autocmd!
    "autocmd BufEnter term://* normal! :QuickfixsignsDisable
    autocmd WinEnter term://* startinsert
augroup END
  " }}}

let g:vimtex_compiler_progname = 'nvr'

  " Have thin cursor shape in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  " enable true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set term=screen-256color
if &term =~ '256color'

"" disable Background Color Erase (BCE) so that color schemes render properly
"when inside 256-color tmux and GNU screen.  see also
"http://snk.tuxfamily.org/log/vim-256color-bce.html
set t_ut=
endif

" = Terminal and Splits movment and creation = {{{
" ================================================
" Move between splits
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
tnoremap <A-c> <C-\><C-n><C-w>c
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-c> <C-w>c

" New split creation
tnoremap <A-d>    <C-\><C-n>:vsp<bar>enew<CR>
tnoremap <A-s-d>  <C-\><C-n>:sp<bar>enew<CR>
inoremap <A-d>    <ESC>:vsp<bar>enew<CR>
inoremap <A-s-d>  <ESC>:sp<bar>enew<CR>
nnoremap <A-d>    :vsp<bar>enew<CR>
nnoremap <A-s-d>  :sp<bar>enew<CR>

" New terminal creation
tnoremap <A-t>    <C-\><C-n>:vsp<bar>enew<bar>call termopen("bash -l")<CR>
tnoremap <A-s-t>  <C-\><C-n>:sp<bar>enew<bar>call termopen("bash -l")<CR>
inoremap <A-t>    <ESC>:vsp<bar>enew<bar>call termopen("bash -l")<CR>
inoremap <A-s-t>  <ESC>:sp<bar>enew<bar>call termopen("bash -l")<CR>
nnoremap <A-t>    :vsp<bar>enew<bar>call termopen("bash -l")<CR>
nnoremap <A-s-t>  :sp<bar>enew<bar>call termopen("bash -l")<CR>
" }}}
endif
" }}}

"let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'
"
nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSendLine<cr>
vnoremap <silent> <f9> :TREPLSendSelection<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>"

" Git commands
command! -nargs=+ Tg :T git <args>

let g:fzf_commits_log_options = '--color=always --pretty=format:"%Cred%h%Creset - %s %Cgreen(%cr)%Creset by %C(bold blue)%an%C(yellow)%d%Creset" --abbrev-commit --date=relative'

" fzf comandos, 2019-04-28

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~30%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

"fzf mappings
nnoremap <leader>p :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>t :Files<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

let g:polyglot_disabled = ['latex']
set noshowmode

"CDC =Change to directory of the current file}}}
if !exists("command")
    command! CDC cd %:p:h
endif

"Automatically change the current directory
"autocmd BufEnter * silent! lcd %:p:h

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"This method uses a command line abbreviation so %% expands to the full path of the directory that contains the current file
cabbr <expr> %% expand('%:p:h')

"while editing file /some/path/myfile.txt, typing :e %%/ on the command line will expand to  :e /some/path/.

set path=$PWD/**
"This will set your path variable to current directory (from which you launched vim) and to all directories under current directory recursively

"Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 1

"Keep your cursor 6 lines above end of screen
set scrolloff=6

""Disable arrow keys in normal mode
"noremap <Up> <NOP>
""noremap <Down> <NOP>
"noremap <Left> <NOP>
""noremap <Right> <NOP>"

" *----* EDITING *----*
" *-------------------*
"------ Helpful abbreviations ------
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

"Spelling corrects. Just for example. Add yours below:
iab teh the
iab Teh The
iab Adn And
iab adn and

" ---> AUTOCOMPLETIONS <----
"Wordpress.vim
let g:wordpress_vim_wordpress_path = "~/wordpress/"

""omnicompletion config
set completeopt=menu,menuone,longest

"autocomplete HTML
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags

""autocomplete PHP
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"autocomplete CSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

""Ctags
set tags=./tags;"

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsListSnippets="<c-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" PHP7
let g:ultisnips_php_scalar_types = 1
let g:UltiSnipsSnippetDir=["UltiSnips" ]
let g:UltiSnipsSnippetDirectories=["UltiSnips"]


" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources.php = ['padawan', 'ultisnips', 'tags', 'buffer']
let g:deoplete#sources#padawan#add_parentheses = 1
" needed for echodoc to work if add_parentheses is 1
let g:deoplete#skip_chars = ['$']
" cycle through menu items with tab/shift+tab
inoremap <expr> <ö>   pumvisible() ? "\<c-n>" : "\<ö>"
inoremap <expr> <s-ö> pumvisible() ? "\<c-p>" : "\<ö>"

"CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"VimWiki ----2019/02
let wiki_1 = {}
let wiki_1.path = '~/vimwiki_work_md/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let wiki_2 = {}
let wiki_2.path = '~/vimwiki_personal_md/'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [wiki_1, wiki_2]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"Investigate.vim settings
"let g:investigate_command_for_python = '/usr/bin/zeal ^s'
""Investigate.vim mapping
:nnoremap gz :!zeal "<cword>"&<CR><CR>

" ----> OpenBrowserSearch Usage: <----
""Open URI under cursor.
let g:open_url_browser="xdg-open"
"Search word under cursor.
nmap goo <Plug>(openbrowser-search)
""Search selected word.
vmap gog <Plug>(openbrowser-search)
" If it looks like URI, open an URI under cursor.  Otherwise, search a word
" under cursor.
 nmap gos <Plug>(openbrowser-smart-search)
" "If it looks like URI, open selected URI.  Otherwise, search selected word.
 vmap gos <Plug>(openbrowser-smart-search)
" "Open http://google.com/ in a web browser.{{{}}}{{{
" ":OpenBrowser http://google.com/
" Search the word "vim". (Default search engine is google)
" :OpenBrowserSearch vim
"  Search the word "openbrowser" in www.vim.org .
" :OpenBrowserSearch -vim openbrowser
" If it looks like URL, open the URL in a web browser.
" :OpenBrowserSmartSearch http://www.vim.org/
"  If it does not look like URL, open the word " in the default search
" engine.
" " OpenBrowserSmartSearch emacs download
" " Also you can specify another search engine.
" :OpenBrowserSmartSearch -github tyru
" }}}
