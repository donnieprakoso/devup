set encoding=utf-8

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-markdown'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'crusoexia/vim-monokai'
Plug 'taigacute/gruvbox9'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-expand-region'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'taigacute/spaceline.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 't9md/vim-choosewin'
Plug 'yuttie/comfortable-motion.vim'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'cespare/vim-toml'
Plug 'fatih/vim-go' 
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'
Plug 'jparise/vim-graphql'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kristijanhusak/vim-carbon-now-sh'
call plug#end()
map <C-n> :NERDTreeToggle<CR>
let g:copy_cut_paste_no_mappings = 1
nmap cc <Plug>CCP_CopyLine
vmap cc <Plug>CCP_CopyText

nmap cx <Plug>CCP_CutLine
vmap cx <Plug>CCP_CutText

nmap cv <Plug>CCP_PasteText
vmap cv <Plug>CCP_PasteText


syntax on
set termguicolors     " enable true colors support
colorscheme monokai_pro

let python_highlight_all=1
set nu
set guifont=Roboto\ Mono
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

let NERDTreeShowHidden=1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

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
