"设置缩进
set sw=2
set ts=2

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

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
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
"在输入命令时列出匹配项目，也就是截图底部的效果
set wildmenu
set nocindent
"打开自动缩,继承前一行的缩进方式，特别适用于多行注释 进
" set autoindent
"默认情况下手动折叠
set foldmethod=manual
"显示行号（否：nonumber）
"set number
"不自动换行(否：wrap)
set nowrap
"缺省不产生备份文件
set nobackup
" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
"set bufhidden=hide 
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
" 不要闪烁
set novisualbell
"正确地处理中文字符的折行和拼接
set formatoptions+=mM
"文件 UTF-8 编码
set fileencodings=utf-8
