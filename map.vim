" Vim global plugin for mappings
" Last Change:
" Maintainer: svtter <svtter@qq.com>
" License:



" ----------------------------------------------------------------------------
"  Map: map设置
" ----------------------------------------------------------------------------
" 任何时候都是使用*noremap的形式，以非递归形式

let mapleader = " "

" NERDtree 目录
nnoremap <Leader>d :NERDTreeToggle<CR>
nnoremap <Leader>ss :NERDTreeFind<CR>

" Need Ctrlp
" jet-pack buffer without-Ctrl-P: "nnoremap <leader>l :ls<CR>:b<space>
nnoremap tf :CtrlPFunky<CR>
nnoremap tb :CtrlPBuffer<CR>
nnoremap tp :CtrlPBufTagAll<CR>
nnoremap tt :TagbarToggle<CR>


" 新的cpp文件
" nnoremap <Leader>nf :n $HOME/code/uva/
" nnoremap <Leader>nt :call TempCpp()<CR>


func! TempCpp()
    execute 'n /tmp/tmp.cpp'
endfunction

" 与J相反
nnoremap <Leader>to i<CR><Esc>

" map
map j gj
map k gk

" For ACM
nnoremap <Leader>ii :vs input<CR>
nnoremap <Leader>io :vs ouput<CR>

" Ctrl map
inoremap <C-z> <Esc>uA
inoremap <C-l> <Right>

" normal<Leader> 多用,作为开始
" 全选
nnoremap <Leader>aa ggVG


" 复制到系统粘贴
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" nnoremap H 0
" nnoremap L $

" 分屏设置
nnoremap ss :vs %<CR>
nnoremap sp :sp %<CR>

" 存储设置
nnoremap <Leader>we :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>X :x!<CR>

" 快速添加成对
nnoremap <Leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <Leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <Leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <Leader>[ viw<esc>a]<esc>hbi[<esc>lel

" 括号
nnoremap <Leader>cc %
nnoremap <Leader>cr d%
"nnoremap <Leader>rl :so %<CR>

" 快速编辑vimrc
nnoremap <Leader>ee :e $MYVIMRC<CR>

nnoremap <Leader>ev :e ~/.vim/plugged/<CR>
nnoremap <Leader>el :e ~/.vim/plugin.vim<CR>
nnoremap <Leader>ed :e ~/.vim/default.vim<CR>
nnoremap <Leader>em :e ~/.vim/map.vim<CR>
nnoremap <Leader>ea :e ~/.vim/plugged/vim-abbreviations/plugin/vim-abbreviations.vim<CR>
nnoremap <Leader>en :e ~/.vim/config/

" 使用Neovim自带的terminal
nnoremap <Leader>ba :vsp term://zsh<CR>

" 快速编辑blog
nnoremap <Leader>bl :e /home/svitter/svtter.github.io/source/_posts/<CR>

" 用于缓存区的快速切换<Leader> t键
nnoremap <Leader>tj :bn<CR>
nnoremap <Leader>tk :bp<CR>

" Tab的相关操作
nnoremap <S-H> gT
nnoremap <S-L> gt
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>th :tabp<CR>
nnoremap <Leader>tl :tabn<CR>
nnoremap <Leader>tc :Toc<CR>

" 生成tags
noremap <F3> :execute '!ctags -R *'<CR>

" 常规模式下输入 cS 清除行尾空格
nnoremap tS :%s/\s\+$//g<CR>:noh<CR>

" 常规模式下输入 cM 清除行尾 ^M 符号
nnoremap tM :%s/\r$//g<CR>:noh<CR>

" 将当前行移动到下一行
nnoremap - ddo<Esc>p
nnoremap \ dd

" space to :
" nnoremap <space> :

" 用空格键来开关折叠
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


" 强迫ESC不可用模式
inoremap <Esc> <nop>
inoremap fd <ESC>

" Movement:
"
" 编辑函数参数
onoremap in( :<c-u>normal! f(vi(<cr>

" 在不使用 MiniBufExplorer 插件时也可用<C-k,j,h,l>切换到上下左右的窗口中去
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l


" Emacs Work:
" Ctrl + B 插入模式下使用Home
" Ctrl + E 插入模式下使用End
" 暂时使用本义
inoremap <c-b> <Home>
inoremap <c-e> <End>

" HTML Emmet:


nnoremap <Leader>m :browse oldfiles<CR>
nnoremap <Leader>u :UndotreeToggle<cr>


au FileType go nmap <leader>r <Plug>(go-run)


"  end

