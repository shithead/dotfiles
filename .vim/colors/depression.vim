" Vim color file
" Maintainer: PwnyTail <pwytail at <<</>> dot de>
" Last Change: 2014-09-20

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "depression"

hi Normal                                       ctermfg=254                         guifg=Black         guibg=depression

hi SpecialKey   term=bold                       ctermfg=4                          guifg=Blue
hi NonText      term=bold           cterm=bold  ctermfg=4               gui=bold   guifg=Blue
hi Directory    term=bold                       ctermfg=4                          guifg=Blue
hi ErrorMsg     term=standout       cterm=bold  ctermfg=7   ctermbg=1   gui=bold   guifg=White         guibg=Red
hi IncSearch    term=reverse        cterm=reverse                       gui=reverse
hi Search       term=NONE           cterm=reverse ctermfg=235 ctermbg=196                              guibg=Gold2
hi MoreMsg      term=bold                       ctermfg=2               gui=bold   guifg=SeaGreen
hi ModeMsg      term=bold           cterm=bold                          gui=bold
hi LineNr       term=underline      cterm=bold  ctermfg=251 ctermbg=241            guifg=Red3
hi Question     term=standout                   ctermfg=2               gui=bold   guifg=SeaGreen
hi StatusLine                       cterm=NONE  ctermfg=251 ctermbg=241 gui=bold   guifg=White         guibg=Black
hi StatusLineNC                                 ctermfg=246             gui=bold   guifg=PeachPuff     guibg=Gray45
hi VertSplit    term=reverse                    ctermfg=246             gui=bold   guifg=White         guibg=Gray45
hi Title        term=bold                       ctermfg=134             gui=bold   guifg=DeepPink3
hi Visual                           cterm=reverse ctermfg=236 ctermbg=226  gui=reverse guifg=Grey80     guibg=fg
hi VisualNOS    term=bold,underline cterm=bold,underline                gui=bold,underline
hi WarningMsg   term=standout                   ctermfg=1               gui=bold   guifg=Red
hi WildMenu     term=standout       cterm=bold  ctermfg=50  ctermbg=236            guifg=Black         guibg=Yellow
hi Folded       term=standout                   ctermfg=209 ctermbg=236            guifg=Black         guibg=#e3c1a5
hi FoldColumn   term=standout                   ctermfg=209 ctermbg=236
hi DiffAdd      term=bold                                   ctermbg=4                                  guibg=White
hi DiffChange   term=bold                                   ctermbg=5                                  guibg=#edb5cd
hi DiffDelete   term=bold           cterm=bold  ctermfg=4   ctermbg=6   gui=bold   guifg=LightBlue     guibg=#f6e8d0
hi DiffText     term=reverse        cterm=bold              ctermbg=1   gui=bold                       guibg=#ff8060
hi Cursor                                                                          guifg=bg            guibg=fg
hi lCursor                                                                         guifg=bg            guibg=fg
hi CursorLineNr                     cterm=bold,underline    ctermfg=50 ctermbg=242
hi ColorColumn                                              ctermbg=143
hi MyTagListFileName                            ctermfg=209 ctermbg=236
hi link MyTagListTagName Visual
hi Tabline                          cterm=NONE  ctermfg=251 ctermbg=241
hi TabLineSel                                   ctermfg=50  ctermbg=236
hi TabLineFill                      cterm=NONE              ctermbg=246


" Colors for syntax highlighting
hi Comment      term=bold                       ctermfg=154                                              guifg=#406090
hi Constant     term=underline                  ctermfg=207                                              guifg=#c00058
hi Special      term=bold                       ctermfg=164                                              guifg=SlateBlue
hi Identifier   term=NONE                       ctermfg=87                                              guifg=DarkCyan
hi Statement    term=bold                       ctermfg=227                          gui=bold            guifg=Brown
hi PreProc      term=underline                  ctermfg=230                                              guifg=Magenta3
hi Type         term=underline                  ctermfg=122                          gui=bold            guifg=SeaGreen
hi Ignore                           cterm=bold  ctermfg=7                                                guifg=bg
hi Error        term=reverse        cterm=bold  ctermfg=197  ctermbg=1               gui=bold            guifg=White         guibg=Red
hi Todo         term=standout                   ctermfg=0    ctermbg=3                                   guifg=Blue          guibg=Yellow

