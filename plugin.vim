"" Plug:
""
call plug#begin('~/.vim/plugged')


" Default:
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'kshenoy/vim-signature'
Plug 'mattn/webapi-vim'
"Plug 'leafgarland/typescript-vim'
"Plug 'chr4/nginx.vim'
Plug 'kshenoy/vim-signature'


Plug 'Vigemus/iron.nvim'

"Plug 'ternjs/tern_for_vim'


" Async:
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/quickmenu.vim'

Plug 'suan/vim-instant-markdown'

" Rust:
"Plug 'rust-lang/rust.vim'

" Orgmode:
"Plug 'jceb/vim-orgmode'
"Plug 'tpope/vim-speeddating'

" https://github.com/chrisbra/csv.vim#installation
Plug 'chrisbra/csv.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}



" Python:
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'hylang/vim-hy'
"Plug 'jpalardy/vim-slime'
Plug 'tell-k/vim-autopep8'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'hdima/python-syntax'

" Go:
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"Plug 'tpope/vim-markdown'


" Spellchecker:
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
"Plug 'davidhalter/jedi-vim'

" Wiki:
Plug 'vimwiki/vimwiki'



" Completor:

" use deoplete or coc.nvim
let g:is_deoplete = 1

if g:is_deoplete
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'

    endif

    Plug 'zchee/deoplete-jedi'
    Plug 'zchee/deoplete-go', { 'do': 'make'}
    let g:deoplete#enable_at_startup = 1
else
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
endif

"Plug 'maralla/completor.vim'


" General Programming:
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'spf13/vim-autoclose'


Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tacahiroy/ctrlp-funky'
"Plug 'FelikZ/ctrlp-py-matcher'

Plug 'godlygeek/tabular'
Plug 'mbbill/undotree'
"Plug 'terryma/vim-multiple-cursors'
Plug 'brookhong/cscope.vim'

Plug 'brookhong/cscope.vim'

" EDIT:
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'


" Rust:
Plug 'rust-lang/rust.vim'


" Colorschemes:
"Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'joshdick/onedark.vim'

Plug 'ayu-theme/ayu-vim' " or other package manager


" Javascript:
"Plug 'groenewege/vim-less'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'briancollins/vim-jst'
"Plug 'leafgarland/typescript-vim'
Plug 'nathanaelkane/vim-indent-guides'



" Git:
Plug 'tpope/vim-fugitive'



" HTML:
Plug 'mattn/emmet-vim'
"Plug 'othree/html5.vim'
"Plug 'posva/vim-vue'
"Plug 'chemzqm/wxapp.vim'
"Plug 'Svtter/ACM.vim'



" Buffer:
"Plug 'fholgado/minibufexpl.vim'
"Plug 'leafgarland/typescript-vim'



" Snippets: {
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'



" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"}

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsExpandTrigger = '<C-l>'
"let g:UltiSnipsJumpForwardTrigger = '<C-j>'
"let g:UltiSnipsJumpBackwardTrigger = '<C-k>'


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" UI:
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'

" Wexin:
" "Plug 'chemzqm/wxapp.vim'

Plug '/usr/local/opt/fzf'

call plug#end()

let g:tex_conceal = ""


autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.config/nvim/plugin.vim source ~/.config/nvim/plugin.vim
