function! s:journal()
  let dirs = get(g:, 'journal#dirs', ['Journal', 'journal', 'journal.d'])
  if index(dirs, expand('%:p:h:t')) >= 0
    set filetype=journal
  endif
endfunction

function! DetectJournalFileType()
  let l:filepath = expand('%:p') " Get the full path of the current file

  if l:filepath =~# 'Journal'
    set filetype=journal 
  endif
endfunction


au BufRead,BufNewFile * call DetectJournalFileType()
