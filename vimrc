"{{{ Functions
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
"}}}
"{{{ Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'wincent/command-t'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
" Plugin '1995eaton/vim-better-javascript-completion'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'marijnh/tern_for_vim'
Plugin 'sirver/ultisnips'
call vundle#end()            " required
filetype plugin indent on
"}}}
"{{{ Statusline
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    highlight StatusLine ctermbg=1 ctermfg=0 cterm=Bold
  elseif a:mode == 'r'
    highlight StatusLine ctermbg=0 ctermfg=0 cterm=Bold
  else
    highlight StatusLine ctermfg=8 ctermbg=18
  endif
endfunction

set laststatus=2
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y
set statusline+=\ ℓ%l\ 𝚌%c
set statusline+=\ 

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * highlight StatusLine ctermfg=8 ctermbg=18
" default the statusline to green when entering Vim
highlight StatusLine ctermfg=8 ctermbg=18
"}}}
"{{{ Show invisible characters
set listchars=space:⋅,eol:¬,tab:\|⋅,trail:⋅,extends:>,precedes:<
set list
"}}}
"{{{ Mappings
let mapleader = " "
nnoremap <Leader>t :CommandT<CR>
nnoremap <Leader>b :CommandTBuffer<CR>
inoremap <Leader><Leader> <Esc>
vnoremap <Leader><Leader> <Esc>
"}}}
syntax on
filetype plugin indent on
highlight Comment cterm=italic
set nocompatible
set number relativenumber
set cursorline
set wildmenu
set wildmode=full
set completeopt=menuone,preview
set clipboard=unnamed
set wildignore+=node_modules
set backupcopy=yes
set expandtab tabstop=2 shiftwidth=2
