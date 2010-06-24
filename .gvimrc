" Last Change: 2009-11-13 17:21:06
"判断系统是否具有“自动命令”（autocmd）的支持
if has('autocmd')
"清除所有的自动命令，以方便调试
au!
"对于后缀为“.asm”的文件，认为其是微软的 Macro Assembler 格式
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
endif
" 载入文件类型插件
filetype plugin on 
" 为特定文件类型载入相关缩进文件
filetype indent on 
" colorscheme railscasts
" colorscheme fruidle
colorscheme gemcolors 
" colorscheme night
" colorscheme twilight
"语法样式开启
syntax on
"设置字体大小
set guifont=Monaco
"当使用了图形界面，并且环境变量 LANG 中不含“.”（即没有规定编码）时，把 Vim 的内部编码设为 UTF-8
"set encoding=utf-8
"设置缩进
set sw=2
set ts=2
set softtabstop=2
set expandtab
" history文件中需要记录的行数
set history=100 
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,- 
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt 
"不需要保持和 vi 非常兼容
"set nocompatible
"执行 Vim 缺省提供的 .vimrc 文件的示例，包含了打开语法加亮显示等最常用的功能
"source $VIMRUNTIME/vimrc_example.vim
" 使backspace正常处理indent, eol, start等
set backspace=indent,eol,start whichwrap+=<,>,[,]
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l 
"在输入命令时列出匹配项目，也就是截图底部的效果
set wildmenu
"打开自动缩,继承前一行的缩进注释 进
set autoindent
"默认情况下手动折叠
set foldmethod=manual
"显示行号（否：nonumber）
set number
"显示光标的坐标
set ruler
"不自动换行(否：wrap)
set nowrap
"缺省不产生备份文件
set nobackup
" 不要生成swap文件
set noswapfile
"set bufhidden=hide
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 搜索时不区分大小写
" set ignorecase
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
" 搜索高亮
set hlsearch
" 不要闪烁
set novisualbell 
"正确地处理中文字符的折行和拼接
set formatoptions+=mM
"文件 UTF-8 编码
set fileencodings=utf-8
"设置文件格式为unix
set fileformat=unix
"开启命令显示
set showcmd
"设置窗口大小
set lines=35
set columns=120
" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI 
" 导出 html 设置
let html_use_css = 1
let html_number_lines = 0
let use_xhtml = 1

"隐藏底部滚动条
set guioptions-=b
"隐藏右边滚动条
set guioptions-=R
set guioptions-=r
"隐藏左边滚动条
set guioptions-=l
set guioptions-=L
"隐藏菜单栏
set guioptions-=m
"隐藏工具栏
set guioptions-=T


"设置Ctrl+F12呼出菜单栏
function! ToggleMenuBar()
	echo "ToggleMenuBar"
	if &guioptions =~# 'm'
		set guioptions-=m
	else
		set guioptions+=m
	endif
endfunction
imap <silent> <C-F12> <C-O>:call ToggleMenuBar()<CR>
map <silent> <C-F12> :call ToggleMenuBar()<CR>

"设置工作目录
function! CHANGE_CURR_DIR()
let _dir = expand("%:p:h")
exec "cd " . _dir
unlet _dir
endfunction
autocmd BufEnter * call CHANGE_CURR_DIR()

" NERDTree插件的快捷键
imap <silent> <F7> <esc>:NERDTreeToggle<CR>
nmap <silent> <F7> :NERDTreeToggle<CR>
" BufExplorer 快捷键 {{{
imap <silent> <F8> <esc>:BufExplorer<CR>
nmap <silent> <F8> :BufExplorer<CR>
" }}}

"CTRL-[ and CTRL-] indent and unindent blocks {{{
"  inoremap <C-[> <C-O><LT><LT>
" inoremap <C-]> <C-O><GT><GT>
"  nnoremap <C-[> <LT><LT>
"  nnoremap <C-]> <GT><GT>
"  vnoremap <C-[> <LT>
"  vnoremap <C-]> <GT>
"}}}

" NERD Commenter {{{
let NERDSpaceDelims = 1
map <M-/> <Plug>NERDCommenterToggle
imap <M-/> <C-O><Plug>NERDCommenterToggle
" }}}

" 窗口区域切换,Ctrl+↑↓←→  来切换
imap <silent> <C-left> <esc><C-W><left>
vmap <silent> <C-left> <esc><C-W><left>
nmap <silent> <C-left> <C-W><left>
imap <silent> <C-right> <esc><C-W><right>
vmap <silent> <C-right> <esc><C-W><right>
nmap <silent> <C-right> <C-W><right>
imap <silent> <C-up> <esc><C-W><up>
vmap <silent> <C-up> <esc><C-W><up>
nmap <silent> <C-up> <C-W><up>
imap <silent> <C-down> <esc><C-W><down>
vmap <silent> <C-down> <esc><C-W><down>
nmap <silent> <C-down> <C-W><down>

" delete hack
nmap <silent> <del> "_x
vmap <silent> <del> "_x
nmap <silent> dd V<del>
nmap <silent> dw viw<del>
vmap <silent> dw iw<del>


" Textmate alt-p & alt+l {{{
inoremap <M-p> params[:]<left>
inoremap <M-j> session[:]<left>
inoremap <M-l> <space>=><space>
inoremap <M->> <%=<space><space>%><left><left><left>
" shift+alt+l 选择行
inoremap <M-L> <C-O><home>v<S-end>
nnoremap <M-L> <home>v<S-end>
" shift+alt+k 删除行
inoremap <M-K> <C-O><home>v<S-end><del>
nnoremap <M-K> <home>v<s-end><del>
" ctrl + c,a,v,x,z
nnoremap <BS> d
" ctrl + a
noremap <C-A> ggVG
inoremap <C-A> <C-O>ggVG
" ctrl + s

imap <C-s> <esc>:w<CR>:echo expand("%f") . " saved."<CR>
vmap <C-s> <esc>:w<CR>:echo expand("%f") . " saved."<CR>
nmap <C-s> :w<CR>:echo expand("%f") . " saved."<CR>

" ctrl + n
imap <C-n> <esc>:enew!<CR>
nmap <C-n> :enew!<CR>
vmap <C-n> <esc>:enew!<CR>
" ctrl + c
vmap <C-c> "+y
" ctrl + x
vmap <C-x> "+x
" ctrl + z
inoremap <C-z> <C-O>u
nnoremap <C-z> u
" ctrl + y
inoremap <C-y> <C-O><C-R>
nnoremap <C-y> <C-R>
" ctrl + v
nnoremap <C-v> "+gP
inoremap <C-v> <C-O>"+gP
" ctrl + f
imap <C-f> <esc>:/
nmap <C-f> :/
" ctrl + r
imap <C-r> <esc>:%s/
vmap <C-r> <esc>:%s/
nmap <C-r> :%s/
" ctrl + o
imap <C-o> <C-O>:e
vmap <C-o> <esc>:e
nmap <C-o> :e 
"}}}

let g:acp_enableAtStartup = 1
" 自动完成设置 禁止在插入模式移动的时候出现 Complete 提示
let g:acp_mappingDriven = 1
let g:acp_ignorecaseOption = 0
" 自动完成设置为 Ctrl + p 弹出
let g:acp_behaviorKeywordCommand = "\<C-p>"
let g:acp_completeoptPreview = 0

