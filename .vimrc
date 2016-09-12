set nu
set nocompatible
set ts=4  " tab 宽度
set softtabstop=4 " 软制表符宽度
set shiftwidth=4 " 缩进使用四个空格
set cindent " 使用C/C++语言缩进方式
set expandtab

" detect file type 
filetype on
filetype plugin indent on

" about search
set ignorecase  "搜索模式里忽略大小写
set smartcase "如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set incsearch
set hlsearch

"设置括号自动补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
"inoremap { {<CR>}<ESC>o
inoremap { {}<ESC>i<CR><ESC>V<O

"设置跳出自动补全的括号
func SkipPair()  
    if getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.') - 1] == '}'  
      return "\<ESC>la"  
   else  
      return "\t"  
   endif  
endfunc  
" 将tab键绑定为跳出括号  
inoremap <TAB> <c-r>=SkipPair()<CR>
