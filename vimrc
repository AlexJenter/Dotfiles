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

"" STATUSLINE
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
syntax on

""" SHOW INVISIBLE CHARACTERS
set listchars=space:⋅,eol:¬,tab:\|⋅,trail:⋅,extends:>,precedes:<
set list

set wildmenu
set wildmode=full,full
set completeopt=menuone,preview
