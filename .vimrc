" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" On pressing tab, insert spaces
set expandtab

" Number of spaces inserted pressing tab
set tabstop=4

" Prevent the line from breaking
set tw=0

" When indenting, use 4 space width
set shiftwidth=4

" split below
set splitbelow

" vsplit on right side
set splitright

" FORTRAN90 STUFF
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

" Enable syntax highlighting
syntax on

" Enable cpp syntax for exotic implementation files
autocmd BufNewFile,BufRead *.ipp set syntax=cpp

" Set highlighting to be suitable for a black background
set background=dark

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Display line numbers on the left
set number

" Use <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" Mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"" Autocompletes parentheses
"ino ( ()<left>
"ino [ []<left>
"ino { {}<left>
"ino {<CR> {<CR>}<ESC>O
"ino {;<CR> {<CR>};<ESC>O
"
