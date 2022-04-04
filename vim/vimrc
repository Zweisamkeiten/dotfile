set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')
set viewdir=$XDG_DATA_HOME/vim/view | call mkdir(&viewdir, 'p')

"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

" Disable the default Vim startup message.
set shortmess+=I

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set tabstop     =2         " 设定 tab 长度为 4
set softtabstop =2         " Tab key indents by 4 spaces.
                           " 使得按退格键时可以一次删掉 4 个空格
set shiftwidth  =2         " >> indents by 4 spaces.
                           " 设定 << 和 >> 命令移动时的宽度为 4
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set ruler                  " 打开状态栏标尺

set backspace   =indent,eol,start  " Make backspace work as you would expect.
                                   " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set hidden                 " Switch between buffers without having to save first.
setlocal noswapfile        " 不要生成swap文件
set bufhidden   =hide      " 当buffer被丢弃的时候隐藏它
set cmdheight=1            " 设定命令行的行数为 1
set laststatus  =2         " Always show statusline.
                           " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
                           " 搜索时高亮显示被找到的文本

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set termguicolors
packadd! onedark.vim
colorscheme onedark       " 设定配色方案
hi Normal guibg=NONE ctermbg=NONE
let g:onedark_terminal_italics=1

set cursorline             " Find the current line quickly.
set number                 " 显示行号
set relativenumber         " 显示相对行号
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

"set showcmd               " Show (partial) command in status line.
set showmatch              " Show matching brackets.
set ignorecase             " Do case insensitive matching
set smartcase              " Do smart case matching
set incsearch              " Incremental search. Enable searching as you type, rather than waiting till you press enter.

""set autowrite          " Automatically save before commands like :next and :make
set mouse       =a       " Enable mouse usage (all modes)

set noerrorbells         " 关闭错误信息响铃
set novisualbell         " 关闭使用可视响铃代替呼叫
set t_vb=                " 置空错误铃声的终端代码
set matchtime   =2       " 短暂跳转到匹配括号的时间
set magic                " 设置魔术
set smartindent          " 开启新行时使用智能自动缩进
set foldenable           " 开始折叠
set foldmethod  =syntax  " 设置语法折叠
set foldcolumn  =0       " 设置折叠区域的宽度
setlocal foldlevel=1     " 设置折叠层数为 1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
set tags        =./tags,./TAGS,tags,TAGS "设置tags文件

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files

"set autochdir             " 自动切换当前目录为当前文件所在的目录
"set backup
set nobackup               " 覆盖文件时不备份
set backupcopy  =yes       " 设置备份时的行为为覆盖
set backupdir   =$XDG_CACHE_HOME/vim/files/backup | call mkdir(&backupdir, 'p')
set backupext   =-vimbackup
set backupskip  =
set directory   =$XDG_CACHE_HOME/vim/files/swap   | call mkdir(&directory, 'p')
set updatecount =100
set undofile
set undodir     =$XDG_CACHE_HOME/vim/files/undo     | call mkdir(&undodir,   'p')
if !has('nvim') | set viminfofile=$XDG_CACHE_HOME/vim/files/info/viminfo | endif

"cmdline-editing
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" Set main configuration directory as parent directory
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/pack/plugins.vim'
