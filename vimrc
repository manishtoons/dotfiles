filetype plugin on
syntax on

" syntax highlighting
execute pathogen#infect()

set encoding=utf-8
set t_Co=256

set nohls
set wm=1
set showmode
set ignorecase "ignore casing while search
set aw
set showmode

"specify tabs
set expandtab
set tabstop=4
set shiftwidth=4

set nocompatible "make vim more useful
set clipboard=unnamedplus " use systems clipboard

set wildmenu "enhance command-line completion
set wildchar=<tab>
set wildignore=*.pyc,*~,*.png,*.jpg
set ttyfast "optimizing for fast terminal connections
set binary "dont add new line at EOF
set noeol
set modeline
set modelines=4
set hlsearch " highlight search results
set incsearch " make searh acts like modern browser
set cursorline " hightligh current line
set nofoldenable " disabled foldings
set pastetoggle=<F2>
set scrolloff=4 " set 4 lines to curson - when moving vertically
set lazyredraw " dont redraw while executing macros
set magic " for regex, turn magic on
set omnifunc=pythoncomplete#Complete
set scrolloff=8 "start scorlling when we are 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set hidden " this hids buffers in background and wont showup in front, acts like any other editor
set visualbell
set autoread " reload any changes happens from the disk
set complete+=k
set title " set title of window according to filename
set showcmd " show command on last line


" take care of swap files
set dictionary=$HOME/swapfiles/

" set dictionary so we could use it for autocompletion and autocorrent as well :)
set dictionary+=/usr/share/dict/words

" display warning on file changes
au FileChangedShell * echo "Warning: File changed on disk, execute :e to reload"

let mapleader = ","

" ======================================================================
" python settings
" ======================================================================
" highlight word under cursor
map <leader>s <esc>*N<cr>

" to disable mouse
set mouse=c

" better copy and paste

" make backspace behave normal
" bs=2

" rebing leader key

" better tab movements, hit ,m for next ,n for previous
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>
map <Leader>M <esc>:bprev<CR>
map <Leader>m <esc>:bnext<CR>

" settings for python file editing
au BufRead,BufNewFile *.py set autoindent
au BufRead,BufNewFile *.py set ruler
au BufRead,BufNewFile *.py set number
au BufRead,BufNewFile *.py set smarttab
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py set relativenumber
au BufRead,BufNewFile *.py set showcmd
au BufRead,BufNewFile *.py set showmatch "show matched brackets
au BufRead,BufNewFile *.py set mat=3 "how many tenths of a second to
" blink when match happens

" overlay grey color after 80 word
augroup vimrc_autocmd
autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#392929
autocmd BufEnter * match OverLength /\%79v.*/
augroup END


" line break on 500 characters
set lbr
set tw=500

" commandline and status bar
set cmdheight=3
set laststatus=2

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python'

" execute current buffer
nnoremap <silent> <F5> :!clear; python `pwd`/%<CR>

" nerdtree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowsExpandable = ">"
let g:NERDTreeDirArrowsCollapsible = "--"

" settings for ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc

" settings for PYTHON-Mode
" map <Leader>g :call RopeGotoDefinition()<CR>
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_rope_lookup_project = 0
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_rope = 0

" better navigation through omni list
set completeopt=longest,menuone

" jedi autocompletion settings
let g:jedo#completions_enabled=1
let g:jedi#auto_initialization=1
let g:jedi#auto_vim_configuration=1
let g:jedi#use_tabs_not_buffers=1
let g:jedi#use_split_not_buffers="left"
let g:jedit#popup_on_dot=0
let g:jedi#popup_select_fist=0
let g:jedi#show_call_signature="1"

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignment_command = "<leader>g"
let g:jedi#goto_definition_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usage_command = "<leader>d"
let g:jedi#completions_command = "<Ctrl-N>"

let g:jedi#smart_auto_mapping=1
let g:jedi#smarttab=1
let g:jedi#showmatch=1

" set tags here
set tags=/home/mahendra/workspace/tags
",$HOME/tags,$HOME/workspace/tags,

" YCM related stuff
let g:ycm_server_use_vim_stdout=1
let g:ycm_server_log_level='debug'

" ultisnip
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<s-c-j>"
let g:UltiSnipsEditSplit="verticle"
let g:UltiSnipsExpandTrigger="<c-k>"
let g:ultisnips_python_style='sphinx'

" return to last edit mode when re-opened the file
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal! g`\"" |
\endif

" remember info about buffers on close
set viminfo^=%

" colors
" colorscheme badwolf
set background=light

" Make the tab line lighter than the background.
let g:badwolf_tabline = 2

"let g:solarized_termcolors=256
"let g:solarized_contrast='high'
" let g:solarized_visibility=1

" stausline settings
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" CtrlP settings
let g:ctrlp_lazy_update = 350 " set delay to prevent extra search
let g:ctrlp_clear_cache_on_exit = 0 " do not clear cache, we will do it by hitting F5
let g:ctrlp_max_file = 0 " set no file limit, we are working on a big project

" If ag is available use it as filename list generator instead of 'find'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore
    ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'
endif


" let pymatcher take control over ctrlp
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#quickfix#location_text = 'Location'
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#branch#displayed_head_limit = 10 " truncate long branch name to fix length
let g:airline#extensions#branch#format = 0
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 's'
let g:airline#extensions#whitespace#enabled = 0

" enable/disable showing a summary of changed hunks under source control
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#fnamemod = ':t'

" bufferline settings
let g:bufferline_active_highlight='StatusLine'
let g:bufferline_inactive_highlight='StatusLineNC'
let g:bufferline_active_buffer_left='['
let g:bufferline_active_buffer_right=']'
let g:bufferline_modified='+'
let g:bufferline_fname_mod=':.'

" vimya setting
let g:vimyaTailCommand = 'STail' " show the maya's output log in seperate buffer
let g:vimyaShowLog = 0 " donot send the output to maya, we wont open maya to see output

" Nerdtree git setting
let g:NERDTreeIndicatorMapCustom = {
\ "Modified" : "✹",
\ "Staged" : "✚",
\ "Untracked" : "✭",
\ "Renamed" : "➜",
\ "Unmerged" : "═",
\ "Deleted" : "✖",
\ "Dirty" : "✗",
\ "Clean" : "✔︎",
\ "Unknown" : "?"
\ }


" abbrivations
iab slef self
iab sefl self
iab sfel self

" source autocorrect.vim
source ~/autocorrect.vim

" =================================
" ========= all mappings ==========
" =================================

" disable arrows
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" moving around in insert mode
cnoremap <A-h> <Left>
cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-l> <Right>

" move lines up and down
map <C-k> <esc>0ddkkp<cr>:nohl<cr>
map <C-j> <esc>0ddp<cr>:nohl<cr>

" maximize pane
map <C-,> <esc>^w ><cr>
map <C-.> <esc>^w <<cr>

" add new line below curson
map <leader>nj <esc>o<esc>j
map <leader>nk <esc>O<esc>k

" duplicate current line
map <leader>d <esc>yyj0pjdd

" add double quotes to the word under/previous cursor
map <Leader>" <esc>hciw"<C-r>"<esc>
map <Leader>' <esc>hciw'<C-r>"'<esc>

" better tab movements, hit ,m for next ,n for previous
map <Leader>L <esc>:tabprevious<CR>
map <Leader>l <esc>:tabnext<CR>

map <Leader>M <esc>:bprev<CR>
map <Leader>m <esc>:bnext<CR>

" commenting selected lines in any mode
map <Leader>3 :call CommentLineToEnd('# ')<CR>+

" easier movement of block of code
vnoremap < <gv
vnoremap > >gv

" speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" map <Leader>s <esc>:SyntasticReset<CR>
map <Leader>e <esc>:NERDTreeToggle<CR>
map <silent> <Leader>s <esc>:TagbarToggle<CR>

" restart YCM
map <Leader><F9> <esc>:YcmRestartServer<CR>

" CtrlP Mappings
map <Leader>z <esc>:CtrlPBuffer<CR>
map <Leader>f <esc>:CtrlPFunky<CR>

let g:highlighting = 0
function! Highlighting()
    if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
        let g:highlighting = 0
        return ":silent nohlsearch\<CR>"
    endif
    let @/ = '\<'.expand('<cword>').'\>'
    let g:highlighting = 1
    return ":silent set hlsearch\<CR>"
endfunction

nnoremap <silent> <expr> <CR> Highlighting()

