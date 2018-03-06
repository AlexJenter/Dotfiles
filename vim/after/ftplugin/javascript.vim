highlight link xmlEndTag xmlTag
setlocal nowrap
setlocal foldmethod=syntax
autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))
