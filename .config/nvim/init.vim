set encoding=utf-8
execute pathogen#infect()
filetype plugin on
filetype indent on
set autoindent
let g:deoplete#enable_at_startup = 1

" syntax highlighting
syntax on
set omnifunc=syntaxcomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
let $JS_CMD='node'
set t_Co=256
let base16colorspace=256
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" modeline 
set modelines=0

" something
set regexpengine=1

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim

source ~/.config/nvim/plugins.vim

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" turning on syntax
set number

set smartcase

" set cc=79

" Paste 
" set paste

" setting relative line numbers
set relativenumber

" something 
if (has("termguicolors"))
 set termguicolors
endif

" setting colorscheme
let g:alduin_Shout_Become_Ethereal = 1
let g:alduin_Shout_Aura_Whisper = 1

let g:hybrid_reduced_contrast = 1
let g:hybrid_custom_term_colors = 1
let g:onedark_termcolors=256

" colorscheme base16-gooey
" colorscheme base16-gooey" colorscheme base16-ashes
" colorscheme base16-gooey" colorscheme base16-default-dark
" colorscheme material-theme
" colorscheme molokai
" colorscheme gruvbox
" colorscheme solarized
" colorscheme monokai
" colorscheme seti
" colorscheme badwolf
" colorscheme papercolor
" colorscheme base16-ocean
" colorscheme material-theme
" colorscheme monokai-phoenix
colorscheme OceanicNext
" colorscheme spacegray
" colorscheme onedark

" highlight search
set hls

" tern 
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '.js.flow', 
                \ 'flow'
                \ ]

" wrap text instead of being on one line
set lbr

set scrolloff=3

" shift width and general tabs & shit
set shiftwidth=4
set softtabstop=2
set expandtab
set background=dark

" show command in the bottom bar 
set showcmd

" show cursor line
" set cursorline

" set show match
set showmatch 

" insearch
set incsearch

" ruler 
" set ruler

" something
set visualbell

" showmode
set showmode

" autoindent
set autoindent

" something
set ttyfast

" backspace
set backspace=indent,eol,start

"last status
set laststatus=2

" undofile
set undofile

" wrap
" set wrap
" set textwidth=79
" set formatoptions=qrn1
" set colorcolumn=120

" list
" set list
" set listchars=tab:▸\ ,eol:¬

" Saving files
map <C-s> :w<CR>

" highlighting
au BufNewFile,BufRead *.ejs set filetype=html syntax=ejs
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.jsx set filetype=jsx syntax=javascript
au BufNewFile,BufRead *.handlebars set filetype=html syntax=mustache
au BufNewFile,BufRead *.mustache set filetype=html syntax=mustache
au BufNewFile,BufRead *.php set filetype=php syntax=php
au BufNewFile,BufRead *.js set filetype=javascript syntax=javascript
au BufNewFile,BufRead *.html set filetype=html syntax=html 
au BufNewFile,BufRead *.json set filetype=json syntax=json 
au BufNewFile,BufRead *.css set filetype=css syntax=css 
au BufNewFile,BufRead *.scss set filetype=scss syntax=scss
au BufNewFile,BufRead *.sass set filetype=sass syntax=sass 
au bufNewfile,BufRead *.js.flow set filetype=flow syntax=javascript
au bufNewfile,BufRead *.ts set filetype=typescript syntax=typescript

" let python_highlight_all = 1

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 27 
let NERDTreeShowHidden=1

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_javascript_checkers = ['jshint']

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_save = 0

" Javaacript characters
" let g:javascript_conceal_function       = "ƒ"
" let g:javascript_conceal_null           = "ø"
" let g:javascript_conceal_this           = "@"
" let g:javascript_conceal_return         = "⇚"
" let g:javascript_conceal_undefined      = "¿"
" let g:javascript_conceal_NaN            = "ℕ"
" let g:javascript_conceal_prototype      = "¶"
" let g:javascript_conceal_static         = "•"
" let g:javascript_conceal_super          = "Ω"
" let g:javascript_conceal_arrow_function = "⇒"

"mustache
let g:mustache_operators = 0

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

"airline settings
" let g:airline_theme='badwolf'
" let g:airline_theme='hybrid'
" let g:airline_theme='simple'
"let g:airline_theme='zenburn'
let g:airline_theme='oceanicnext'
" let g:airline_theme='kolor'
" let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

"smart tab line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:Powerline_symbols = 'fancy'
" font
set guifont=Monospace\ 20

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
