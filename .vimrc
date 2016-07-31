"--------------------------------
" check Vundle exist or install it
"--------------------------------
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

"--------------------------------
" Vundle setting
"--------------------------------
" Vundle
set nocompatible
filetype off

" setup Vundle run path
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" List the required plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/DrawIt'
Plugin 'vim-scripts/AutoClose--Alves'
Plugin 'easymotion/vim-easymotion'
Plugin 'VisIncr'
Plugin 'yegappan/mru'
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

"--------------------------------
"  Basic vim setting
"--------------------------------
syntax on
filetype plugin indent on
set shiftwidth=4
"set expandtab
"set softtabstop=4
"set tabstop=4
"set number
set cindent
set autoindent
set hlsearch
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=utf8,big5,gbk,latin1
"set background=dark


"" " set Mac path
"" let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
"" let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')

" set status line
set statusline=
set statusline+=%1*\[%n]                                  "buffernr
set statusline+=%2*\ %<%F\                                "File+path
set statusline+=%3*\ %=\ %{''.(&fenc!=''?&fenc:&enc).''}\ "Encoding
set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%5*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%6*\ row:%l/%L\ col:%03c\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
hi User2 ctermfg=3  ctermbg=0
hi User6 ctermfg=3  ctermbg=4
set laststatus=2


""
"" set guifont=Consolas:h14
"" "set guifontwide=Microsoft\ YaHei:h14
""

"--------------------------------
"  airline
"--------------------------------
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly

"set separator
let g:airline_left_sep='>'
let g:airline_right_sep='<'
"enable powerline-fones
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1



"--------------------------------
" show trailing white spaces
"--------------------------------
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
autocmd BufWritePre *.sv :%s/\s\+$//e

"--------------------------------
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
"--------------------------------
"" function RemoveTrailingWhitespace()
"" if &ft; != “diff"
"" let b:curcol = col(“.")
"" let b:curline = line(“.")
"" silent! %s/s+$//
"" silent! %s/(s*n)+%$//
"" call cursor(b:curline, b:curcol)
"" endif
"" endfunction
"" autocmd BufWritePre * call RemoveTrailingWhitespace()



"--------------------------------
"NERD Commenter"
"--------------------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1



"--------------------------------
" indentLine
"--------------------------------
"let g:indentLine_loaded = 1
let g:indentLine_enabled = 1
"vim
let g:indentLine_color_term = 239
"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)""
let g:indentLine_char = '┆'


