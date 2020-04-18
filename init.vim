set encoding=utf-8

call plug#begin('~/.local/share/nvim/plugged')

"TO DELETE
"Plug '/usr/local/opt/fzf'
"Plug 'davidhalter/jedi-vim'
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'taigacute/spaceline.vim'
"Plug 'crusoexia/vim-monokai'
"Plug 'fatih/vim-go' 
"Plug 'altercation/vim-colors-solarized'
"Plug 'tpope/vim-markdown'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'junegunn/fzf.vim'

"https://github.com/frazrepo/vim-rainbow
Plug 'frazrepo/vim-rainbow'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'taigacute/gruvbox9'
Plug 'terryma/vim-expand-region'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 't9md/vim-choosewin'
Plug 'yuttie/comfortable-motion.vim'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'cespare/vim-toml'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'
Plug 'jparise/vim-graphql'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'sbdchd/neoformat'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
Plug 'fisadev/vim-isort'
Plug 'sillybun/vim-repl'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
"imap ;; <Esc>
"map ;; <Esc>
"vmap ;; <Esc>

" Copy and Paste
let g:copy_cut_paste_no_mappings = 1
nmap cc <Plug>CCP_CopyLine
vmap cc <Plug>CCP_CopyText

nmap cx <Plug>CCP_CutLine
vmap cx <Plug>CCP_CutText

nmap cv <Plug>CCP_PasteText
vmap cv <Plug>CCP_PasteText

"Copy to Clipboard
noremap <Leader>CC "*y
noremap <Leader>CV "*p

nmap  -  <Plug>(choosewin)
"let g:airline_theme='simple'

syntax on
"set background=dark
"colorscheme gruvbox9
"colorscheme gruvbox
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
let &t_8f = "\[38;2;%lu;%lu;%lum"
let &t_8b = "\[48;2;%lu;%lu;%lum"
colorscheme monokai_pro
"colorscheme gruvbox

let python_highlight_all=1
set nu
" set guifont=Hack:h20
set guifont=Roboto\ Mono
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

let NERDTreeShowHidden=1
"let NERDTreeMapOpenInTab='<ENTER>'
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=["ultisnippets"]
"let g:SuperTabDefaultCompletionType    = '<C-n>'
"let g:SuperTabCrMapping                = 0
"let g:UltiSnipsExpandTrigger           = '<tab>'
"let g:UltiSnipsJumpForwardTrigger      = '<c-b>'
"let g:UltiSnipsJumpBackwardTrigger     = '<c-z>'

"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" CoC-Snippets
" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? coc#_select_confirm() :
      "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"let g:coc_snippet_next = '<tab>'


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

syntax on
set nu
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set showmatch
set incsearch
set showtabline=2
let g:indent_guides_enable_on_vim_startup = 1
let mapleader = ","
filetype plugin on

vmap <leader>" <Plug>NERDCommenterToggle

" LIGHTLINE configuration
let g:lightline = {
      \ 'colorscheme': 'molokai',
    \ 'active':{
    \ 'left':[['mode','relativepath','absolutepath','readonly','filename','modified']]
    \ },
      \ }

" Emmet change keystroke
let g:user_emmet_expandabbr_key = '<C-a>,'

if $TERM == "xterm-256color"
  set t_Co=256
endif

