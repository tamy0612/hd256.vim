" hd256.vim
" Vim dark colorscheme
"
" Author: Yasumasa Tamura
" Last Change: 07 Nov. 2017
"
let colors_name = expand('<sfile>:t:r')

set t_Co=256
set background=dark
highlight clear


" Base
" ----------
highlight      Normal       ctermfg=253  ctermbg=234  cterm=none      guifg=#d0d0d0 guibg=none    gui=none
highlight      SpecialKey   ctermfg=196  ctermbg=none cterm=none      guifg=#ee0000 gui=none
highlight      Whitespace   ctermfg=215  ctermbg=none cterm=none      guifg=#ffaf5f


" Area
" ----------
highlight      LineNr       ctermfg=245  ctermbg=236  cterm=none      guifg=#767676 guibg=#303030 gui=none
highlight      CursorLineNr ctermfg=253  ctermbg=236  cterm=bold      guifg=#ff5f5f guibg=#303030 gui=bold
highlight      VertSplit    ctermfg=234  ctermbg=236  cterm=none
highlight link SignColumn   LineNr

highlight      CursorLine   ctermfg=none ctermbg=none cterm=underline guifg=none    guibg=none    gui=underline
highlight      CorsorColumn ctermfg=none ctermbg=236  cterm=none

highlight      TabLineFill  ctermfg=none ctermbg=17   cterm=none
highlight      TabLine      ctermfg=243  ctermbg=17   cterm=none
highlight      TabLineSel   ctermfg=203  ctermbg=17   cterm=bold



" Emphasis
" ----------
highlight      Visual       ctermfg=none ctermbg=240   cterm=none     guifg=none    guibg=#303030 gui=none
highlight      Search       ctermfg=203  ctermbg=none  cterm=bold     guifg=#800000 guibg=none    gui=bold
highlight      Error        ctermfg=15   ctermbg=88    cterm=bold     guifg=#ffffff guibg=#800000 gui=bold
highlight      Todo         ctermfg=124  ctermbg=184   cterm=bold     guifg=#aa0000 guibg=#dddd00 gui=bold
highlight link Search       IncSearch
highlight link Search       Substitute


" Popup menu
" -----------
highlight      Pmenu ctermbg=23 ctermfg=250
highlight      PmenuSel ctermbg=26 ctermfg=250
highlight      PmenuSbar ctermbg=23
highlight      PmenuThumb ctermbg=38


" Blocks
" -----------
" highlight Comment      ctermfg=245  ctermbg=none cterm=none      guifg=#767676 guibg=none    gui=none
" highlight Constant ctermfg=199 cterm=none guifg=#ff69b4 gui=none
" highlight Identifier ctermfg=51 cterm=bold guifg=#00f5ff gui=bold
" highlight Statement ctermfg=11 cterm=none guifg=#ffff00 gui=none
" highlight Conditional ctermfg=11 cterm=bold guifg=#ffff00 gui=bold
" highlight Repeat ctermfg=11 cterm=bold guifg=#ffff00 gui=bold
" highlight Exception ctermfg=11 cterm=bold guifg=#ffff00 gui=bold
" highlight PreProc ctermfg=39 cterm=none guifg=#00bfff gui=none
" highlight Type ctermfg=120 cterm=none guifg=#98fb98 gui=none

" TODO: implement
" -------------
" highlight ColorColumn
" highlight Conceal
" highlight Cursor
" highlight CursorIM
" highlight CursorColumn
" highlight CursorLine
" highlight Directory
" highlight DiffAdd
" highlight DiffChange
" highlight DiffDelete
" highlight DiffText
" highlight EndOfBuffer
" highlight TermCursor
" highlight TermCursorNC
" highlight ErrorMsg
" highlight Folded
" highlight FoldColumn
" highlight SignColumn
" highlight IncSearch
" highlight Substitute
" highlight MatchParen
" highlight ModeMsg
" highlight MoreMsg
" highlight NonText
" highlight Pmenu
" highlight PmenuSel
" highlight PmenuSbar
" highlight PmenuThumb
" highlight Question
" highlight QuickFixLine
" highlight Search
" highlight SpecialKet
" highlight SpellBad
" highlight SpellCap
" highlight SpallLocal
" highlight SpellRare
" highlight StatusLine
" highlight StatusLineNC
" highlight Title
" highlight WarningMsg
" highlight Whitespace
" highlight WildMenu


" Constant Group
" --------------

" Identifier Group
" ----------------

" Emphasis
" --------
" highlight Underlined ctermfg=121 cterm=underline guifg=#76eec6 gui=underline

" Visual
" ------

" Special Group
" -------------
" highlight Special ctermfg=196 cterm=none guifg=#ee0000 gui=none
" highlight Whitespace ctermfg=215 guifg=#ffaf5f

" Corsor
" ------

" Status line
" -----------

augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
  if v:version < 704
    autocmd WinLeave * set nocursorcolumn
    autocmd WinEnter,BufRead * set cursorcolumn
  endif
augroup END

augroup sl
  autocmd! sl
  autocmd VimEnter * highlight StatusLine ctermfg=LightGray ctermbg=DarkBlue cterm=none
  autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkRed cterm=none
  autocmd InsertLeave * highlight StatusLine ctermfg=LightGray ctermbg=DarkBlue cterm=none
augroup END
