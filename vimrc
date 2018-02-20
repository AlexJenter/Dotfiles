set number
set laststatus=2

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

hi User1 ctermbg=white ctermfg=black
hi User2 ctermbg=black ctermfg=white

set statusline=
set statusline+=%1*
set statusline+=%{StatuslineGit()}
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y
set statusline+=%2*
set statusline+=\ ℓ%l\ 𝚌%c
set statusline+=\ 


if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

