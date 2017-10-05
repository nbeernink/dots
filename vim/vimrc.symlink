set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'christoomey/vim-sort-motion'
Bundle 'wakatime/vim-wakatime'
Bundle 'sjl/gundo.vim.git'
Plugin 'VundleVim/Vundle.vim'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'pearofducks/ansible-vim'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'chriskempson/base16-vim'
Plugin 'rakr/vim-one'
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

syntax on
set backspace=2 "make backspace work normal on OSX
set t_Co=256
set showcmd
set encoding=utf-8
set formatoptions=qrn1
set gdefault
set hlsearch
set ignorecase
set incsearch
set showmatch
set showmode
set smartcase
set textwidth=79
set wrap
set wildmenu
set wildmode=longest:full,full
set cursorline
colorscheme molokai

" set number relativenumber
" augroup numbertoggle
"	autocmd!
"	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

"leaders

"unfold all folds
nnoremap <space> za
"remove all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"indent all puppet arrows
nnoremap <leader>T :Tabularize /=><CR>
"spellcheck in english
nnoremap <leader>S :set spell spellang=en_us<CR>
nnoremap <Leader>n :set invnumber number?<CR>
nnoremap <Leader>u :GundoToggle<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"XML settings
" packadd! matchit
"let g:xml_syntax_folding=1
"autocmd Syntax xml setlocal foldmethod=syntax
"autocmd Syntax xml normal zR

"Syntastic config
let g:syntastic_puppet_puppetlint_args = "--no-documentation-check --no-80chars-check --no-140chars-check --no-autoloader_layout-check"
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Highlight tab characters, trailing spaces and whitespace red
highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$\| \+\ze\t/
autocmd Syntax * syn match TrailWhitespace /\s\+$\| \+\ze\t/
