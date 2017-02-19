call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-obsession'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pelodelfuego/vim-swoop'
Plug 'vim-airline/vim-airline'


Plug 'maksimr/vim-jsbeautify'
Plug 'elixir-lang/vim-elixir'
Plug 'othree/yajs.vim'
Plug 'lambdatoast/elm.vim'

call plug#end()


colorscheme newsprint
set clipboard=unnamed
set hidden

map <leader>e :e 
map <leader>w :w<CR>
map <leader>x :x<CR>
map <leader>q :q<CR>
map <leader>d :bd<CR>
map ` :bp<CR>
map <tab> :bn<CR>
map <leader>r :source ~/.config/nvim/init.vim<CR>

map <leader>f :FZF<CR>
map <leader>b :Buffers<CR>
map <leader><leader> <Plug>NERDCommenterToggle
map <leader>n <Plug>NERDTreeTabsToggle<CR>
nmap <Leader>s :call Swoop()<CR>

let g:swoopUseDefaultKeyMap = 0
let g:vim_json_syntax_conceal = 0

let g:airline#extensions#tabline#enabled = 1

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.
set ignorecase

:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
