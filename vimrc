set nocompatible
filetype on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-obsession'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'

" folds
Plugin 'tmhedberg/SimpylFold'

" code browsing
Plugin 'kien/ctrlp.vim'

" status bar
"Plugin 'bling/vim-airline'
Plugin 'hecal3/vim-leader-guide'
Plugin 'mattn/emmet-vim'
"
Plugin 'davidhalter/jedi-vim'
"
Plugin 'terryma/vim-multiple-cursors'

" themes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'W0ng/vim-hybrid'
Plugin 'jnurmine/Zenburn'
Plugin 'kamwitsta/flatwhite-vim'
Plugin 'tpope/vim-vividchalk'
Plugin 'reedes/vim-colors-pencil'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'dracula/vim'
Plugin 'albertorestifo/github.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Powerline
"Plugin 'powerline/powerline'

" navigation
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'jlanzarotta/bufexplorer'

" edit 20190310
Plugin 'will133/vim-dirdiff'

Plugin 'jistr/vim-nerdtree-tabs'
"Tmux navigation & Integration
Plugin 'tmux-plugins/vim-tmux'
Plugin 'christoomey/vim-tmux-navigator'
" Incremental search
Plugin 'haya14busa/incsearch.vim'

" Terminal Integration
Plugin 'wincent/terminus'


" snippets
Plugin 'SirVer/ultisnips'
Plugin 'aalvarado/ultisnips-snippets'

"Documentación
Plugin 'Keith/investigate.vim'

" php
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'

"Bundle 'joonty/vim-phpqa.git'

" general Notetaking
Plugin 'vimwiki/vimwiki'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jceb/vim-orgmode'
Plugin 'tyru/open-browser.vim'

Plugin 'eugen0329/vim-esearch'

Plugin 'dsawardekar/wordpress.vim'
Plugin 'mileszs/ack.vim'

Plugin 'valloric/youcompleteme'

Plugin 'raimondi/delimitmate'

Plugin 'groenewege/vim-less'

"Plugin 'thinca/vim-fontzoom'

Plugin 'takac/vim-fontmanager'

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"execute pathogen#infect()

" appearance
set pumheight=15
"

"No swap file
set noswapfile
" Command history
set history=500

"Show line number
set number
set relativenumber
set encoding=utf-8

" ===== Search options ======
"
"Highligth search matches
set hlsearch
"Ignore case when searching
set ignorecase
set smartcase
" Incremental searching (search as you type)
set incsearch

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Show incomplete commands
set showcmd

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start
" Convert tabs to spaces
set expandtab
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Highlight tailing whitespace
set listchars=tab:\ \},trail:.
" Find trailing whitespace match ErrorMsg '\s\+$'
" Delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Always show status bar
set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Turn word wrap off
set nowrap
set sidescroll=5

" Default Spelling
setlocal spell spelllang=en_us
set complete+=kspell

" Xtra words / Private dict.
set spellfile=$HOME/.vim/spell/privateDict.utf-8.add

" Switch syntax highlighting on, when the terminal has colors
syntax on

" ====== Theme options =====
if has('gui_running')
  set background=dark
  colorscheme gruvbox "solarized pyte pencil vividchalk PaperColor
else
  colorscheme gruvbox "PaperColor oceanlight pencil vividchalk PaperColor desert molokai dracula industry
  set background=dark
endif
"Change spelling highlightning
hi clear SpellBad
hi SpellBad cterm=underline

"call togglebg#map("<F5>")
set lines=36 columns=90 "Window size


" Font options
if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=Inconsolata\ 13
  elseif has("gui_photon")
    set guifont=Inconsolata:s12
  elseif has("gui_kde")
    set guifont=Courier\ New/12/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Source\ Code\ Pro\ Light\ 12
  endif
endif

" Toggle gui elements
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" Always show the cursor
set ruler
set clipboard=unnamedplus

" Don't show intro
set shortmess+=I

set splitbelow "split windows
set splitright

"split navigations
nmap <silent><A-Up> :wincmd k<CR>
nmap <silent><A-Down> :wincmd j<CR>
nmap <silent><A-Right> :wincmd l<CR>
nmap <silent><A-Left> :wincmd h<CR>


nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Enable folding
set foldmethod=indent
set foldlevel=99
" Close all folds when opening a new buffer
autocmd BufRead * setlocal foldmethod=marker
autocmd BufRead * normal zM

" Enable folding with the space bar
nnoremap <space> za
" Highlight the current line
set cursorline
" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu
" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw
" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch
" Always highlight column 80 so it's easier to see where
" cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=lightgray
set colorcolumn=80
set mouse=a
" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Change color scheme when diffing
fun! SetDiffColors()
  highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
  highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
  highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
  highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColors()

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab
    \ | set autoindent
    \ | set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css,*.php 
    \ set tabstop=2 \| set softtabstop=2 \| set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"------------------------"
"NERDTREE PLUGIN SETTINGS ---added 25/11
"------------------------"
"Shortcut for NERDTreeToggle
nmap <leader>nt :NERDTreeToggle <CR>

:let g:NERDTreeWinSize=20

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" -----------------------------

"Helpeful abbreviations
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

"Spelling corrects. Just for example. Add yours below.
iab teh the
iab Teh The
iab Adn And
iab adn and

"Automatically change the current directory
"autocmd BufEnter * silent! lcd %:p:h

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>


cabbr <expr> %% expand('%:p:h')
"while editing file /some/path/myfile.txt, typing :e %%/ on the command line will expand to  :e /some/path/.

set path=$PWD/**
"This will set your path variable to current directory (from which you launched vim) and to all directories under current directory recursively
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 1

"You Completeme configuration

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
"Wordpress.vim
let g:wordpress_vim_wordpress_path = "~/wordpress/"

"omnicompletion config
set completeopt=menu,menuone,longest

"autocomplete HTML
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"autocomplete PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP"

"autocomplete CSS
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS

"Ctags
set tags=./tags;

"Keep your cursor 6 lines above end of screen
set scrolloff=6

"Disable arrow keys in normal mode
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

"Investigate.vim settings
let g:investigate_command_for_python = '/usr/bin/zeal ^s'

"Investigate.vim mapping
:nnoremap gz :!zeal "<cword>"&<CR><CR>

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!open '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction
    map <leader>u :call HandleURL()<cr>

function! Browser ()
  let line = getline (".")
  let line = matchstr (line, "\%(http://\|www\.\)[^ ,;\t]*")
  exec ':silent !firefox ' . "\"" . line . "\""
endfunction
    map <Leader>w :call Browser ()<CR>

"Usage:

	" Open URI under cursor.
	" Search word under cursor.
	nmap goo <Plug>(openbrowser-search)
	" Search selected word. vmap map-you-like <Plug>(openbrowser-search)

	" If it looks like URI, open an URI under cursor.
	" Otherwise, search a word under cursor.
	nmap gos <Plug>(openbrowser-smart-search)
	" If it looks like URI, open selected URI.
	" Otherwise, search selected word.
	vmap gos <Plug>(openbrowser-smart-search)

"	" Open http://google.com/ in a web browser.
"	:OpenBrowser http://google.com/
"	" Search the word "vim". (Default search engine is google)
"	:OpenBrowserSearch vim
"	" Search the word "openbrowser" in www.vim.org .
"	:OpenBrowserSearch -vim openbrowser
"	" If it looks like URL, open the URL in a web browser.
"	:OpenBrowserSmartSearch http://www.vim.org/
"	" If it does not look like URL, open the word
"	" in the default search engine.
"	:OpenBrowserSmartSearch emacs download
"	" Also you can specify another search engine.
"	:OpenBrowserSmartSearch -github tyru

"CDC =Change to directory of the current file
if !exists("command")
command! CDC cd %:p:h
endif

"This method uses a command line abbreviation so %% expands to the full path of the directory that contains the current file
cabbr <expr> %% expand('%:p:h')

"Neovim conf.
"set termguicolors
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

"set term=screen-256color

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


"Syntasyic rules
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_w = 0
let g:syntastic_check_on_wq = 0

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

set selection=inclusive

"Multiple cursors
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

"Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#enable#fugitive=1
let g:airline#enable#syntastic=1
let g:airline#enable#bufferline=1
if has('gui_running')
let g:airline_theme='solarized'
else
let g:airline_theme='tomorrow'
endif

set noshowmode
