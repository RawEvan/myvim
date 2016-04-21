set nu!   "设置行号"
"colorscheme khaki   "设置配色方案"
syntax enable   "语法高亮"
syntax on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch   "设置匹配模式"
set smartindent "c程序自动缩进"
set ai! "自动缩进"
set guifont=menlo:h12
set hls     "高亮显示匹配字项"
set encoding=utf-8 "解决YCM报错问题，但会导致GVIM菜单乱码"
set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8   "解决提示乱码问题"
source $VIMRUNTIME/delmenu.vim "解决菜单乱码问题"
source $VIMRUNTIME/menu.vim  "解决菜单乱码问题"
set fenc=utf-8 
set fencs=ucs-bom,utf-8,cp936,gbk,big5,euc-jp,euc-kr,latin1
set backupdir=~/.vimbackup
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.'))<0) ? 'zc' : 'zo')<CR>    "空格键折叠"
set mouse=a "鼠标"
set nocompatible
set confirm "处理为保存或只读文件时提示"
"set noerrorbells
"在窗口间显示空白"
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set matchtime=1 "括号匹配高亮时间"
set formatoptions=tcrqn "自动格式化"
"set lines=25 columns=108
let mapleader=","

inoremap [ []<ESC>i
inoremap [[ [
inoremap { {}<ESC>i
inoremap {{ {
inoremap {<CR> {<CR>}<ESC>ko
inoremap < <><ESC>i
inoremap << <
inoremap ( ()<ESC>i
inoremap (( (
inoremap " ""<ESC>i
inoremap "" "
inoremap ' ''<ESC>i
inoremap '' '
imap jk <ESC>
imap jj <ESC>la
nmap <C-n> <ESC>:w<CR>
nmap <leader>ts :tselect<CR>
nmap <leader>cm :CMiniBufExplorer<CR>
nmap <leader>pdb oimport pdb<CR>pdb.set_trace(<ESC>
nmap <leader>re :<UP>
nmap <leader>cp :call CompileCode()<CR>
nmap <leader>ru :call RunCode()<CR>
nmap <leader>db :call Debug()<CR>

"Vundle"
"filetype off
"set rtp+=$VIM/vimfiles/bundle/Vundle.vim
"call vundle#begin('$VIM/vimfiles/bundle')
"Plugin 'gmarik/Vundle.vim'
"Plugin 'L9'
"Plugin 'taglist.vim'
"Plugin 'winmanager'
"Plugin 'The-NERD-tree'
"Plugin 'pydiction'
"Plugin 'pyflakes'
"Plugin 'superTab'
"Plugin 'yegappan/grep'
"Plugin 'Valloric/YouCompleteMe'
"call vundle#end()
"filetype plugin indent on
"Bundle 'Valloric/YouCompleteMe'

if has('win32')
    au GUIEnter * simalt ~x
else
    au GUIEnter * call MaximizeWindow()
endif
 
function! MaximizeWindow()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

"taglist"
"set tags=tags "tags"
"set autochdir   "tags"
"let Tlist_WinWidth=25
"let Tlist_Use_Right_Window=0
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_File_Fold_Auto_Close=1    "自动折叠"
"nmap <silent> <F6> :Tlist<CR>
"
""winmanager"
"let g:winManagerWindowLayout='FileExplorer|TagList'
""let g:winManagerWindowLayout='FileExplorer'
""nmap wm :WMToggle<cr>
""nmap w= :WMToggle<cr><C-w>p<C-w>=
"let g:AutoOpenWinManager = 1
"nmap <silent> <F7> :WMToggle<CR>
"
""minibufexpl 多文本编辑"
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget = 1    "不要在不可编辑的窗口打开buffer"
"let g:miniBufExplMoreThanOne=0 "不能解决多个minibuf同时存在的问题"
"nnoremap <silent> <F12> :A<CR>
"nnoremap <silent> <F3> :Grep<CR>
"
""vimtweak"
"au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 255)
"call libcallnr("vimtweak.dll", "SetAlpha", 200)
"nmap te :call libcallnr("vimtweak.dll", "SetAlpha", 255)<CR>:colorscheme khaki <CR>
"nmap tw :call libcallnr("vimtweak.dll", "SetAlpha", 130)<CR>:colorscheme evening<CR>
"
""NERDTree"
"nmap <silent> <F2> :NERDTreeMirror<CR>
"nmap <silent> <F2> :NERDTreeToggle<CR>
"let NERDTreeWinSize=25
"let NERDTreeWinPos='left'
"let NERDTreeShowLineNumbers=1
"let NERDTreeShowHidden=0
"
""YouCompleteMe"
"let g:ycm_key_list_select_completion=['<Down>']
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_confirm_extra_conf=0 "关闭加载配置文件提示"
"let g:ycm_collect_identifiers_from_tags_files=1 "使用标签引擎"
"let g:ycm_cache_omnifunc=0 "缓存匹配项?"
""报错:""let g:ycm_seed_identifiers_with_syntax=1 "语法关键字补全"
"let g:ycm_complete_in_comment=1 "在注释中也能补全"
"let g:ycm_complete_in_string=1 "在字符串中也能补全"
"let g:ycm_collect_identifiers_from_comments_and_string=1
""set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致"
""离开插入模式后自动关闭预览窗口"
"autocmd InsertLeave * if pumvisible()==0|pclose|endif 
""回车选中当前项"
"inoremap <expr> <CR> pumvisible() ? '<C-y>':'<CR>'
"
"diff"
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"compile and run"
func! CompileCode()
    exec "w"
    if &filetype == "c"
        exec "!gcc %<.c -o %< -g"
    elseif &filetype == "cpp"
        exec "!g++ %<.cpp -o %< -g"
    endif
endfunc

func! Debug()
    exec "w"
    if &filetype == "c" || &filetype == "cpp"
        exec "!gdb %<"
    elseif &filetype == "python"
        exec "!python -m pdb %<.py"
    endif
endfunc

func! RunCode()
    exec "w"
    if &filetype == "c" || &filetype == "cpp" ||&filetype == "haskell"
        exec "! %<"
    elseif &filetype == "python" || filetype == "py"
        exec "!python %<.py"
    endif
endfunc

