" Most commands taken from github.com/amix/vimrc

""""""""""""""
"   General  "
""""""""""""""

execute pathogen#infect()

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

""""""""""""""
"    UI      "
""""""""""""""

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

set cursorline

" Set language to english
let $LANG='en'

" Turn on wild menu
set wildmenu

set wildmode=list:longest

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show line numbers
set number

"""""""""""""""""""""""
"  Colors and Fonts   "
"""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

try
	colorscheme solarized
catch
endtry

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

""""""""""""""""""""""""""""
" Files, backups, and undo "
""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile

""""""""""""""
"    Text    "
""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "wrap lines
set linebreak
iabbrev teh the
inoremap { {<CR>}<Esc>ko

"""""""""""""""
" Status line "
"""""""""""""""

" Format the status line
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntax highlighting for django html "
au BufNewFile,BufRead *.html set filetype=htmldjango

let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
