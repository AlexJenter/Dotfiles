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

""" Statusline
set laststatus=2
set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y
set statusline+=\ ℓ%l\ 𝚌%c
set statusline+=\ 

set number
set cursorline
syntax on

highlight Comment cterm=italic
" highlight StatusLine ctermbg=1 ctermfg=0 cterm=Bold


function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    highlight StatusLine ctermbg=1 ctermfg=0 cterm=Bold
  elseif a:mode == 'r'
    highlight StatusLine ctermbg=0 ctermfg=0 cterm=Bold
  else
    highlight StatusLine ctermfg=8 ctermbg=18
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
:au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * highlight StatusLine ctermfg=8 ctermbg=18

" default the statusline to green when entering Vim
highlight StatusLine ctermfg=8 ctermbg=18

""" Show invisible characters
set listchars=space:⋅,eol:¬,tab:\|⋅,trail:⋅,extends:>,precedes:<
set list

set wildmenu
set wildmode=full,full
set completeopt=menuone,preview

au FileType gitcommit execute "normal! i" | startinsert
