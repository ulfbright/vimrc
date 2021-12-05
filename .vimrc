set co=90
set lbr
set nu
set nuw=20
set mouse=a

hi Normal ctermbg=233 ctermfg=240
hi LineNr ctermfg=233
hi EndOfBuffer ctermfg=233
hi Sentence ctermfg=15

au CursorMoved <buffer> :match Sentence ".\%>'(\%<')"
au CursorMovedI <buffer> :match Sentence ".\%>'(\%<')"

" au CursorMoved <buffer> :normal zz
" au InsertEnter <buffer> (something to offset CursorMovedI screwing up zz...)
