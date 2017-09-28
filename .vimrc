set nocompatible
set background=dark
set comments=


" https://coderwall.com/p/sdhfug/vim-swap-backup-and-undo-files
set backup
set writebackup
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//

au BufWritePre * let &backupext = '%' . substitute(expand("%:p:h"), "/" , "%" , "g") . "%" . strftime("%Y.%m.%d.%H.%M.%S")
au VimLeave * !cp % ~/.vim/.backup/$(echo %:p | sed 's/\(.*\/\)\(.*\)/\2\/\1/g' | sed 's/\//\%/g')$(date +\%Y.\%m.\%d.\%H.\%M.\%S).wq

" http://nvie.com/posts/how-i-boosted-my-vim/
set nowrap        " don't wrap lines
set expandtab     " tabs are spaces
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start   " allow backspacing over everything in insert mode
filetype indent on
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
" set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" http://nvie.com/posts/how-i-boosted-my-vim/
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
