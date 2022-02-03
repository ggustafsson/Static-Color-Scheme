" Static version 0.9
"
" The best color(less) scheme for Vim in the world! TM.
"
" Created by Göran Gustafsson (gustafsson.g@gmail.com).

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "static"

highlight Comment  ctermfg=144
highlight ErrorMsg ctermfg=15  ctermbg=88
highlight SpellCap ctermfg=15  ctermbg=25

highlight ColorColumn  ctermbg=234
highlight CursorLineNr ctermfg=202 cterm=bold
highlight Folded       ctermfg=144 ctermbg=234
highlight LineNr       ctermfg=240
highlight NonText      ctermfg=240
highlight SpecialKey   ctermfg=240
highlight Visual       ctermfg=15  ctermbg=239

highlight StatusLine   ctermfg=15  ctermbg=238 cterm=none
highlight StatusLineNC ctermfg=247 ctermbg=238 cterm=none
highlight VertSplit    ctermfg=238 ctermbg=238 cterm=none

highlight DiffAdd    ctermfg=15  ctermbg=23
highlight DiffChange ctermfg=15  ctermbg=53
highlight DiffDelete ctermfg=233 ctermbg=none
highlight DiffText   ctermfg=15  ctermbg=124

" Mimic git diff output.
highlight diffAdded   ctermfg=2
highlight diffLine    ctermfg=6
highlight diffRemoved ctermfg=1

" Link to already fixed colors.
highlight clear Conceal
highlight link  Conceal Folded

highlight clear CursorColumn
highlight link  CursorColumn StatusLine

highlight clear FoldColumn
highlight link  FoldColumn Folded

highlight clear Question
highlight link  Question MoreMsg

highlight clear SignColumn
highlight link  SignColumn ColorColumn

highlight clear Todo
highlight link  Todo Comment

highlight clear WarningMsg
highlight link  WarningMsg CursorLineNr

highlight clear WildMenu
highlight link  WildMenu Search

highlight clear gitcommitBranch
highlight clear gitcommitFile
highlight clear gitcommitHeader
highlight clear gitcommitType
highlight link  gitcommitBranch Comment
highlight link  gitcommitFile   Comment
highlight link  gitcommitHeader Comment
highlight link  gitcommitType   Comment

highlight clear Pmenu
highlight clear PmenuSbar
highlight clear PmenuSel
highlight link  Pmenu     DiffChange
highlight link  PmenuSbar StatusLine
highlight link  PmenuSel  DiffText

highlight clear SpellBad
highlight clear SpellLocal
highlight clear SpellRare
highlight link  SpellBad   ErrorMsg
highlight link  SpellLocal DiffAdd
highlight link  SpellRare  DiffChange

highlight clear StatusLineTerm
highlight clear StatusLineTermNC
highlight link  StatusLineTerm   StatusLine
highlight link  StatusLineTermNC StatusLineNC

highlight clear TabLine
highlight clear TabLineFill
highlight clear TabLineSel
highlight link  TabLine     StatusLineNC
highlight link  TabLineFill TabLineSel
highlight link  TabLineSel  StatusLine

" Clear syntax coloring.
highlight clear Constant
highlight clear Error
highlight clear Identifier
highlight clear MatchParen
highlight clear PreProc
highlight clear Special
highlight clear Statement
highlight clear Title
highlight clear Type
highlight clear Underlined

" Plugins...
highlight FernMarkedText ctermfg=39 ctermbg=234

highlight SyntasticErrorSign        ctermfg=197 ctermbg=234
highlight SyntasticWarningSign      ctermfg=179 ctermbg=234
highlight SyntasticStyleErrorSign   ctermfg=39  ctermbg=234
highlight SyntasticStyleWarningSign ctermfg=35  ctermbg=234

augroup Static
  autocmd!

  " When editing markdown files Vim will still display syntax colors because it
  " adds file type specific highlights after it has loaded Static.
  autocmd FileType markdown setlocal syntax=

  " Help text is easier to read with syntax off. Adds brackets, asterix's etc.
  autocmd FileType help setlocal syntax=
augroup END
