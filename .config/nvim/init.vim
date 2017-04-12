set encoding=utf-8
execute pathogen#infect()
filetype plugin on
filetype indent on
set autoindent
let g:deoplete#enable_at_startup = 1
syntax on
set omnifunc=syntaxcomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
let $JS_CMD='node'
set t_Co=256
let base16colorspace=256
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set modelines=0
set regexpengine=1
set rtp+=~/.vim/bundle/Vundle.vim

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/colours.vim
source ~/.config/nvim/filetypes.vim
source ~/.config/nvim/ui.vim

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set number
set smartcase
set relativenumber

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 25
let NERDTreeShowHidden=1


if (has("termguicolors"))
    set termguicolors
endif
set hls
 
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '.js.flow', 
                \ 'flow'
                \ ]

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

set lbr
set scrolloff=3
set shiftwidth=4
set softtabstop=2
set expandtab 
set showcmd
set showmatch 
set incsearch
set visualbell
set showmode
set autoindent
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set undofile
map <C-s> :w<CR>
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_save = 0

"mustache
let g:mustache_operators = 0

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" YCM
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
let g:tern_show_argument_hints="on_hold"

" jsx
let g:jsx_ext_required = 0

" flow
let g:flow#enable = 0
let g:javascript_plugin_flow = 1

let g:javascript_plugin_jsdoc = 1

" css color config
let g:cssColorVimDoNotMessMyUpdatetime = 1
