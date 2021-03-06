# vimrc

A distraction-free Vim configuration for prose, with sentence highlighting -- or focus. Whichever you prefer to call it.

Inspired by iA Writer. I searched high and wide for something like this, but everything I found was bulky, inelegant, conditional-heavy. So I rolled up my sleeves and threw shit at a wall to see what sticks. In the end, I ended up with what you see here.

A few notes. I run a full-screen terminal with 18 point Mono font. You may have to tweak here and there for your own comfort. This creates a 70 character column with a 20 character left margin. It's not centered for me. You can push it to 32 characters on the margin with a ":set foldcolumn=12" and recoloring the FoldColumn highlight group. Not sure what this does to formatting though. 

Also, there's no "typewriter scrolling" included in the configuration. You can address this with a ":set so=n" where 'n' is the number of rows above and below the cursor (scroll offset). It's recommended to set 'n' to 999. Keep in mind this doesn't keep the row centered at the start and end of a file. Nor does it work in insert mode. Another option is ":au CursorMoved <buffer> :normal zz" which works exactly as intended, but only in Normal mode, so it's pointless for the actual writing process. I tried something similar with CursorMovedI, but that traps the first entered character under the cursor. I think there are Ctrl commands to center on the cursor, but I haven't bothered figuring out how to issue those from ":au" yet. If you're here reading this and know what you're doing, my challenge to you is to figure out elegant centerline scrolling, for both Normal and Insert modes.
