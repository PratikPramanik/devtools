call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

""Change leader to comma instead of \
let mapleader=","

set lines=60                    " set height of window to 60

"" Text wrapping
set wrap                        " wrap lines
set textwidth=79                " limits line to 79 characters before wrap
set formatoptions=qrn1          " I don't know what this does NOT GOOD
set colorcolumn=85              " uses a color column to warn when line is too long

"" Textmate style invisible character handing
set list
set listchars=tab:▸\ ,eol:¬

"" Whitespace handling
set tabstop=4 shiftwidth=4      " a tab is four spaces (or set this to 2)
set softtabstop=4               " soft tab stop no tabs used ever (Not necessary I think)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Remapping colon
nnoremap ; :

" Disabling arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Shortcut for stripping whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set showmatch                   " helps highlight matches, \/\/ next line uses <,><space> to clear search
nnoremap <leader><space> :noh<cr>
"" Make Tab key match bracket pairs
nnoremap <tab> %
vnoremap <tab> %


"" Coordinates and Line Numbering
set relativenumber              " show line numbers relative to current position
"set undofile                    " creates and undo file (DISABLED)
set ruler                       " show current line at bottom for screen

"" Security stuff
set modelines=0                 " apparently this is safe

""Default color
colorscheme molokai             " Molokai is the default color scheme
"set guifont=Inconsolata\ 14     " Permaset font to 14pt Inconsolata (Disabled: set in .gvimrc)

"" Keymaps for Plugins
map <F2> :NERDTreeToggle<CR>
map <A-F2> :Sscratch<CR>

"" Sparkup
let g:sparkupExecuteMapping='<D-e>' " Sparkup Cmd+e keymap

"" Command T
" double percentage sign in command mode is expanded to dir of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

""Rainbow Paren
map <leader>R :ToggleRaibowParenthesis<cr>


