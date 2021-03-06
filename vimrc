"" Plugins (in separate file)
so ~/.vim/plugins.vim

"" redefine leader
let mapleader = ','

"" line handling
set wrap
map <leader>lw :set wrap!<cr>

"" selection
set showmatch       " Highlight matching brace
set mouse=a         " Enable mouse

"" searches
set hlsearch        " Highlight all search results
set smartcase       " Enable smart-case search
set ignorecase      " Always case-insensitive
set incsearch       " IncrementalsSearch for strings

"" indentation
set autoindent      " Auto-indent new lines
set expandtab       " Use spaces instead of tabs
set shiftwidth=2    " Number of auto-indent spaces
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs
set softtabstop=2   " Number of spaces per Tab
set backspace=indent,eol,start  " Backspace behaviour

"" copy/paste to/from system
"vnoremap <C-y> "*y
"vnoremap <C-c> "*c
"vnoremap <C-p> "*p
"vnoremap <C-Y> "+y
"vnoremap <C-C> "+c
"vnoremap <C-P> "+p

"" system
set ruler           " Show row and column ruler information
set laststatus=2    " Always show status bar
set noeb vb t_vb=   " Removes bell and visual bell effects
set undolevels=1000 " Number of undo levels

"" encoding
set encoding=utf-8

""" dont use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> :bp<CR>
noremap <Right> :bn<CR>

"" really, just dont
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

"" line numbers
set number
map <leader>ln :set nu!<cr>
map <leader>lr :set rnu!<cr>

"" color scheme
set t_Co=256
"colorscheme bubblegum-256-dark
colorscheme badwolf

"" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme='bubblegum'
let g:airline_theme='badwolf'

"" fuzzy finder
set rtp+=~/.fzf
let $FZF_DEFAULT_COMMAND = 'find * -type f'
map <leader>f. :FZF .<cr>
map <leader>fh :FZF ~<cr>

"" nerdtree
map <c-d> :NERDTreeToggle<cr>
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen = 1

"" tagbar (outline)
map <c-o> :TagbarToggle<cr>

"" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.\*', 'scp://.\*']

"" YCM
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<tab>']
let g:ycm_key_list_previous_completion = ['<s-tab>']
let g:ycm_key_list_stop_completion = ['<c-w>']

" YouCompleteMeMappings
"nnoremap ,gt :YcmCompleter GetType<CR>
"nnoremap ,dl :YcmCompleter GoToDeclaration<CR>
"nnoremap ,df :YcmCompleter GoToDefinition<CR>
"nnoremap ,#  :YcmCompleter GoToReferences<CR>

"" Trigger configuration.
"" Do not use <tab> if you use YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"" ALE
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_sign_info = 'I'

highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
highlight ALEInfoSign ctermbg=NONE ctermfg=green

"let g:ale_set_balloons = 0

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'python' : ['autopep8', 'yapf'],
      \ 'go' : ['gofmt', 'goimports']
      \ }

let g:slimv_swank_cmd =
      \ '! tmux new-window "ecl -norc -load ~/.vim/plugged/slimv/slime/start-swank.lisp" &'

let g:slimv_disable_clojure = 1
