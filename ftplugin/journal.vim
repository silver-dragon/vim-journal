" insert fancy signifiers with abbrevs
"
"
augroup JournalFileType
  autocmd!
  autocmd BufEnter * if &filetype == 'journal' | filetype detect | endif
augroup END

setlocal textwidth=78
syntax enable
setlocal autoindent
setlocal formatoptions=tcroqn1
silent! setlocal formatoptions+=j
setlocal comments=bf:-,bf:*,bf:@,bf:$,bf:o,bf:x,bf:+,bf:=,bf:>,bf:#,bf:::
" setlocal synmaxcol=160

iabbrev todo ·
iabbrev done ×
iabbrev note -
iabbrev moved >
iabbrev event o

" select the task list and hit `gq` to sort and group by status
setlocal formatprg=sort\ -V

" hide junk
setlocal laststatus=0
setlocal noruler nocursorline nocursorcolumn norelativenumber

" pin scrolling
setlocal scrollbind

set syntax=journal
