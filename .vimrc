" -----------------------------------------------------------------------------
" .vimrc
" ChocolateCharlie - August 2021
" -----------------------------------------------------------------------------

" WARNING: uses monokai and onedark themes ; see "Colors & Numbers" section

" GENERAL ----------------------------------------------------------------- {{{
" Disables compatibility with vi which can cause unexpected issues
set nocompatible
" Enables spell checking
" set spell
" }}}

" FILE TYPE --------------------------------------------------------------- {{{
" Enables type file detection
filetype on
" Enables plugins and loads plugin for the detected file type
" filetype plugin on
" Loads and indents file for the detected file type
filetype indent on
" }}}

" COLORS & NUMBERS -------------------------------------------------------- {{{
" Turns syntax highlighting on
syntax on
" Customises coloscheme
" set termguicolors
autocmd BufEnter *.c,*.cpp,*.h      colorscheme monokai
autocmd BufEnter *.css,*.html,*.rb  colorscheme onedark
" Adds numbers to each line on the left-hand side
set number
" Highlights cursor line underneath the cursor horizontally
" set cursorline
" Highlights cursor line underneath the cursor vertically
" set cursorcolumn
" Highlights matching brackets
set showmatch
" Highlights column 80
set colorcolumn=80
" }}}

" SPACES ------------------------------------------------------------------ {{{
" Sets shift width to 2 spaces
set shiftwidth=2
" Sets tab width to 2 columns
set tabstop=2
" Do not wrap lines (allows long lines to extend as far as the line goes)
set nowrap
" Mimics previous' line indentation
set autoindent
" }}}

" SEARCH ------------------------------------------------------------------ {{{
" While searching through a file incrementally highlights matching characters
set incsearch
" Ignores capital letters during search
" set ignorecase
" Overrides the ignorecase option if searching for capital letters
" set smartcase
" Shows matching words during a search
set showmatch
"Highlights search result
set hlsearch
" }}}

" FOLDING ----------------------------------------------------------------- {{{
" Folds code blocks
set foldenable
" Closes all folds by default
set foldlevelstart=0
" Shortcup for opening/closing folds
nnoremap <space> za
" Fold based on indentation
set foldmethod=indent
" }}}

" COMMAND ----------------------------------------------------------------- {{{
" Shows partial command in the last line of the screen
set showcmd
" Shows the current mode on the last line
set showmode
" }}}

" STATUS LINE ------------------------------------------------------------- {{{
" Clears status line when vimrc is reloaded
set statusline=
" Status line left side
set statusline+=\ %F\ %M\ %R
" Divider to separate the left from the right side
set statusline+=%=
" Status line right side
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
" Shows the status on the second to last line
set laststatus=2
" }}}

" WILDMENU ---------------------------------------------------------------- {{{
" Enables auto-completion menu after pressing [TAB]
set wildmenu
set wildmode=list:longest
" Ignores files with these extensions in wildmenu
" set wildignore=*.extension,*.another_extension
" }}}

" VIMSCRIPT --------------------------------------------------------------- {{{
" Enables code folding
" To make changes take effect: :source ~/.vimrc
" Some commands :
" zo opens a single folder | zc closes the folder
" zR opens all folders     | zM closes all folders
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" Enables undofile for Vim versions >= 7.3
" Allows to undo changes to a file even after saving it
if version >= 703
	set undodir=~/.vim/backup
	set undofile
	set undoreload=10000
endif
" }}}

