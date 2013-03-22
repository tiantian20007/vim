set nocompatible
"不兼容vi模式
set number
"显示行号
syntax on
"语法高亮
set cindent
"按照C语法自动缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
"设置缩进长度
"详见http://dddspace.com/2010/03/vim-indentation-and-space-config.html
set showmatch
"显示括号对应
set incsearch
"实时显示搜索结果

""folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use


set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"编码设置

"set guifont=Menlo:h16:cANSI
"设置字体

set guifont=Osaka-Mono:h16
"set background=dark
set background=light

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif


"set t_Co=256          " 256 color mode
set cursorline        " highlight current line

"colors moria

"colorscheme IDLE
"colorscheme colorzone
"colorscheme molokai
"colorscheme blackboard
"colorscheme jellybeans
colorscheme desert
"colorscheme elflord
"colorscheme darkblue
"colorscheme evening
"colorscheme habiLight
"colorscheme wowbat
"colorscheme molokai
"colorscheme rootwater
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night
"colorscheme Tomorrow
"colorscheme Tomorrow-Night-Bright
"colorscheme solarized
"colorscheme
"colorscheme
"colorscheme
"colorscheme


"设置颜色主题 python ide主题
"set guifont=TextMate_Regular:h12
"set guifontwide=Hei_Regular:h14
"set transparency=0
"设置透明度
set linespace=1
"行高

"隐藏工具条
"set guioptions-=T "egmrt

"超过80个字符用下划线标出来
au BufRead,BufNewFile *.c,*.cpp,*.py 2match Underlined /.\%81v/



set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\ 
                            " 设置在状态行显示的信息

"autocmd BufEnter * call DoWordComplete()

"打开自动补齐插件
filetype plugin on
let g:pydiction_location = '/Users/tiantian20007/.vim/tools/pydiction/complete-dict'

filetype plugin indent on
filetype indent on

"omnicomplete/supertab settings
"let g:SuperTabDefaultCompletionType=2
"let g:SuperTabContextDefaultCompletionType="<C-P>"
"let g:SuperTabLongestHighlight = 2

"设置菜单高度
"let g:pydiction_menu_height = 20

nmap <F3> :NERDTree<CR>
nmap <F4> :Tlist<CR>
nmap <F6> :BookmarkToRoot
nmap <F5> :Bookmark 
nmap <F2> :TagbarToggle<CR>
nmap <F1> :JSHint<CR>


let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
"nerdtree忽略文件

"Tag list (ctags)
let Tlist_Show_One_File = 1
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1


"([{" '补全
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
"inoremap ' ''<LEFT>

"function! RemovePairs()
"    let l:line = getline(".")
"    let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
"    if index(["(", "[", "{"], l:previous_char) != -1
"        let l:original_pos = getpos(".")
"        execute "normal %"
"        let l:new_pos = getpos(".")
"        " 如果没有匹配的右括号
"        if l:original_pos == l:new_pos
"            execute "normal! a\<BS>"
"            return
"        end
"        let l:line2 = getline(".")
"        if len(l:line2) == col(".")
"            " 如果右括号是当前行最后一个字符
"            execute "normal! v%xa"
"        else
"            " 如果右括号不是当前行最后一个字符
"            execute "normal! v%xi"
"        end
"    else
"        execute "normal! a\<BS>"
"    end
"endfunction

" 用退格键删除一个左括号时同时删除对应的右括号
"inoremap <BS> <ESC>:call RemovePairs()<CR>a





filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'walm/jshint.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/syntastic'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!





