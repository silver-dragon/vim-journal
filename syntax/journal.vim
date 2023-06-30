" syntax highlighting

if exists("b:current_syntax")
  finish
endif

syn clear

syntax match JournalAll /.*/                 " captures the entire buffer
syntax match JournalDone /^×.*/              " lines containing 'done' items:  ×
syntax match JournalTodo /^·.*/              " lines containing 'todo' items:  ·
syntax match JournalEvent /^o.*/             " lines containing 'event' items: o
syntax match JournalNote /^- .*/             " lines containing 'note' items:  -
syntax match JournalMoved /^>.*/             " lines containing 'moved' items: >
syntax match JournalHeader /^\<\u\+\>.*/     " lines starting with caps
syntax match NonText /^\s*$/ conceal cchar=¬

highlight JournalAll    ctermfg=12
highlight JournalHeader ctermfg=1
highlight JournalDone   ctermfg=2
highlight JournalEvent  ctermfg=6               " cyan
highlight JournalMoved  ctermfg=5               " pink
highlight JournalNote   ctermfg=3               " yellow
highlight VertSplit     ctermfg=15  ctermbg=15    " hide vert splits
highlight LineNr        ctermfg=15  ctermbg=15    " hide line Numbers
highlight NonText guifg=15 ctermfg=15
highlight EndOfBugger guifg=15 ctermfg=15

let b:current_syntax = "journal"
