"行高亮
set cursorline

"配色方案
set background=dark

"显示行号
set number

"vim内部使用的编码方式
set encoding=utf-8

"vim中当前文件的字符编码方式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"防止界面乱码（中文情况下）
set langmenu=zh_cn.utf-8

"开启文件检测
filetype plugin indent on

"设置tags路径
set tags=./tags,tags

"关闭备份,不产生swp文件
set nobackup
set nowb

"开启文件检测
filetype plugin indent on

"语法高亮
syntax on

"智能对齐方式
set smartindent
set autoindent

"tab占4个字符
set tabstop=4

"即时搜索及反白显示第一个匹配
set incsearch

"高亮搜索
set hlsearch


" Open and close all the three plugins on the same time
nmap <F8>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
nmap <F9>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
nmap <F10>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
nmap <F11>  :TrinityToggleNERDTree<CR> 


"设置插入模式下移动光标映射
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"javascript语法高亮脚本的设置
let g:javascript_enable_domhtmlcss=1

" 设置跨终端复制，粘贴快捷键
" xw :复制
" xr :粘贴
" 
 if has("unix")
   nmap xr :r $HOME/.vimxfer<CR>
   nmap xw :'a,.w! $HOME/.vimxfer<CR>
   vmap xr c<esc>:r $HOME/.vimxfer<CR>
   vmap xw :w! $HOME/.vimxfer<CR>
else
   nmap xr :r c:/.vimxfer<CR>
   nmap xw :'a,.w! c:/.vimxfer<CR>
   vmap xr c<esc>:r c:/.vimxfer<cr>
   vmap xw :w! c:/.vimxfer<CR>
endif
set bs=2
