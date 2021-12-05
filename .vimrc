set co=90 " sets the writing column width to 70, taking into account the number line width below
set lbr
set nu
set nuw=20
set mouse=a

hi Normal ctermbg=233 ctermfg=240
hi LineNr ctermfg=233
hi EndOfBuffer ctermfg=233
hi Sentence ctermfg=15

au CursorMoved <buffer> :match Sentence ".\%>'(\%<')" " creates hi group *Sentence* following *\%>* start of sentence *'(* and preceding *\%<* eos *')*
au CursorMovedI <buffer> :match Sentence ".\%>'(\%<')" " p.s. all this preceded by any character *.* because it's not included in the sos marker

" au CursorMoved <buffer> :normal zz
" au CursorMovedI <buffer> (:insert Ctrl-something?)
" au InsertEnter <buffer> (something to offset CursorMovedI screwing up zz...)
