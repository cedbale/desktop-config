execute pathogen#infect()

"term en 256color
set t_Co=256

colorscheme molokai
syntax on
filetype plugin indent on

"adapte les couleurs pour un fond noir
set background=dark 

"affiche les numéros de lignes
set number

"voir fichier cachés
let NERDTreeShowHidden=1

"CTRP and NerdTree
let g:ctrlp_dont_split = 'nerdtree'

"nerdtree si aucun fichier spécifié
autocmd vimenter * if !argc() | NERDTree | endif

"ouvrir neardtree CTRL+N
map <C-n> :NERDTreeToggle<CR>

"passage d'une tab à l'autre
map <C-Left> gT
map <C-Right> gt

"Indentation toutes les quatre colonnes
set tabstop=4
"Conversion des tabulations en espaces
set expandtab
"indentation intelligente
set smartindent
"Conserve l'indentation courante sur les nouvelles lignes
set autoindent
"retours arrières intelligents
set backspace=indent,eol,start

"ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
"rep de recherche par défaut
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['html']
"ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svn     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {                                                                                           
  \ 'dir':  '\.git$\|\.svn$\|_cache\|branches\|tags$',                                                          
  \ 'file': '\.exe$\|\.so$\|\.dat\|\.jpg\|\.png$'                                                                       
  \ }                                         

