highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name = "monokai-cherry"

" BG: 0x272822 [256]
" FG: 0xf8f8f2 [257]
"  0: 0x272822 [0] black
"  1: 0xf92672 [1] red
"  2: 0xa6e22e [2] green
"  3: 0xf4bf75 [3] yellow
"  4: 0x66d9ef [4] blue
"  5: 0xae81ff [5] magenta
"  6: 0xa1efe4 [6] cyan
"  7: 0xf8f8f2 [7] white
"  8: 0x75715e [8] bright black

hi Normal       guifg=#f8f8f2   guibg=#272822   ctermfg=White   ctermbg=256
hi Comment      term=bold       ctermfg=Blue    guifg=#66d9ef
hi Constant     term=underline  ctermfg=Red     guifg=#f91672
hi Special      term=bold       ctermfg=Red     guifg=#f92672
hi Identifier   term=underline  cterm=bold      ctermfg=257     guifg=#f8f8f2
hi Statement    term=bold       ctermfg=Yellow  gui=bold        guifg=#f4bf75
hi PreProc      term=underline  ctermfg=Magenta guifg=#ae81ff
hi Type         term=underline  ctermfg=Green   guifg=#a6e22e   gui=bold
hi Function     term=bold       ctermfg=White   guifg=#f8f8f2
hi Repeat       term=underline  ctermfg=Yellow  guifg=#f4bf75
hi Operator     ctermfg=White   guifg=#f8f8f2
hi Ignore       ctermfg=256   guifg=bg
hi Error        term=reverse    ctermbg=Red     ctermfg=White   guibg=#f92672   guifg=#f8f8f2
hi Todo         term=standout   ctermbg=Yellow  ctermfg=8   guibg=#f4bf75   guifg=#75715e

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
