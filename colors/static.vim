" Static version 0.3
"
" The best color(less) scheme for Vim in the world! TM.
"
" Created by Göran Gustafsson (gustafsson.g@gmail.com).

set background=dark
highlight clear
syntax reset

let colors_name = "static"

highlight ColorColumn  ctermbg=234
highlight Comment      ctermfg=144
highlight DiffText     ctermfg=15 ctermbg=124
highlight ErrorMsg     ctermfg=15 ctermbg=88
highlight Folded       ctermfg=144 ctermbg=234
highlight MatchParen   ctermfg=15
highlight SpecialKey   ctermfg=240
highlight SpellCap     ctermfg=15 ctermbg=25
highlight Visual       ctermfg=15 ctermbg=240

highlight CursorLineNr ctermfg=202
highlight LineNr       ctermfg=240
highlight NonText      ctermfg=240

highlight DiffAdd      ctermfg=15 ctermbg=23
highlight DiffChange   ctermfg=15 ctermbg=53
highlight DiffDelete   ctermfg=233 ctermbg=none

highlight StatusLine   ctermfg=15 ctermbg=238 cterm=none
highlight StatusLineNC ctermfg=247 ctermbg=238 cterm=none
highlight VertSplit    ctermfg=238 ctermbg=238 cterm=none

" Link to already fixed colors
highlight clear CursorColumn
highlight link  CursorColumn StatusLine

highlight clear Error
highlight link  Error ErrorMsg

highlight clear FoldColumn
highlight link  FoldColumn Folded

highlight clear Pmenu
highlight link  Pmenu DiffChange

highlight clear PmenuSel
highlight link  PmenuSel DiffText

highlight clear Question
highlight link  Question MoreMsg

highlight clear SignColumn
highlight link  SignColumn StatusLine

highlight clear SpellBad
highlight link  SpellBad ErrorMsg

highlight clear SpellLocal
highlight link  SpellLocal MatchParen

highlight clear TabLine
highlight link  TabLine StatusLineNC

highlight clear TabLineFill
highlight link  TabLineFill TabLineSel

highlight clear TabLineSel
highlight link  TabLineSel StatusLine

highlight clear WarningMsg
highlight link  WarningMsg CursorLineNr

highlight clear WildMenu
highlight link  WildMenu Search

" Clear syntax coloring
highlight clear Constant
highlight clear Identifier
highlight clear PreProc
highlight clear Special
highlight clear Statement
highlight clear Title
highlight clear Type
highlight clear Underlined
