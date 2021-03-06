" Better safe than sorry? http://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible

" ---- Vim Package Manager: Vundle ----
"   alternatives:
"     https://github.com/Shougo/neobundle.vim
"     https://github.com/junegunn/vim-plug
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'carlson-erik/wolfpack'
"   alternatives:
"     http://cocopon.me/app/vim-color-gallery/
"     http://vimcolors.com/
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
" Plugin 'majutsushi/tagbar'
call vundle#end()
filetype plugin indent on

" ---- Plugin Settings ----

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2
" Set colorscheme
set t_Co=256
colorscheme wolfpack
" Fancy arrows requires a patched font
"   https://github.com/abertsch/Menlo-for-Powerline
"   http://powerline.readthedocs.org/en/latest/installation/linux.html
let g:airline_powerline_fonts = 1
" Show PASTE if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" Only show filenames for buffer headers
let g:bufferline_fname_mod = ':t'

" ----- jistr/vim-nerdtree settings -----
" Open/close NERDTree Tabs with \t
nnoremap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1
" Show hidden files
let NERDTreeShowHidden=1

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- majutsushi/tagbar settings -----
" Open/close tab bar
" nnoremap <silent> <leader>b :TagbarToggle<CR>

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ---- General Settings ----
set backspace=indent,eol,start
set number
set ruler
set showcmd
set incsearch
set hlsearch
set cursorline
set linebreak
set wrap
set hidden
set scrolloff=3

syntax on
set mouse=a

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set autochdir

" ---- Splits ----
" Open splits to the right and below
set splitright 
set splitbelow
" switching panes for vert splits
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" ---- General Navigation ----
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
nnoremap <C-e> $
nnoremap <C-a> 0

" ----- Tab Navigation -----
nnoremap <C-h> gT
nnoremap <C-l> gt

" ----- Buffer Navigation -----
nnoremap <Space><Space> :bprev<CR>

" ---- Searching ----
highlight Search ctermbg=DarkCyan
nnoremap <silent> <C-r> :nohl<CR><C-l>

" ---- Utility Mappings ----
" Change scrolling behavior
nnoremap <C-f> <C-d>
nnoremap <C-b> <C-u>

" ---- Changed Mappings ----
cnoreabbrev reset e!
cnoreabbrev open e
cnoreabbrev tab tabe
cnoreabbrev ls Te
cnoremap cd lcd 

