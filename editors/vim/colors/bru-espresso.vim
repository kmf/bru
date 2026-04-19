" bru-espresso — a lekker colorscheme (dark)
" https://github.com/kmf/bru

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'bru-espresso'
set background=dark

if !has('gui_running') && &t_Co < 256
  finish
endif

" --- Palette ---
let s:bg       = '#1c1814'
let s:bg_soft  = '#26211c'
let s:bg_hi    = '#322b23'
let s:border   = '#3a332b'
let s:fg       = '#f5e8c7'
let s:fg_alt   = '#fbf3db'
let s:fg_muted = '#8a7f6f'

let s:yellow   = '#dbb32d'
let s:orange   = '#ed8649'
let s:red      = '#fa5750'
let s:magenta  = '#f275be'
let s:violet   = '#af88eb'
let s:blue     = '#4695f7'
let s:teal     = '#41c7b9'
let s:green    = '#75b938'

let s:br_red     = '#ff665c'
let s:br_green   = '#84c747'
let s:br_yellow  = '#ebc13d'
let s:br_blue    = '#58a3ff'
let s:br_magenta = '#ff84cd'
let s:br_teal    = '#53d6c7'
let s:br_orange  = '#f19058'
let s:br_violet  = '#be9af5'

let s:diff_add = '#1f2a1b'
let s:diff_del = '#2e1f1d'
let s:diff_chg = '#2a2518'

" --- Helper ---
function! s:hi(group, fg, bg, ...)
  let l:style = a:0 > 0 ? a:1 : 'NONE'
  exe 'hi ' . a:group
    \ . ' guifg=' . (a:fg ==# '' ? 'NONE' : a:fg)
    \ . ' guibg=' . (a:bg ==# '' ? 'NONE' : a:bg)
    \ . ' gui='   . l:style
    \ . ' cterm=' . l:style
endfunction

" --- UI ---
call s:hi('Normal',       s:fg,       s:bg)
call s:hi('NormalFloat',  s:fg,       s:bg_soft)
call s:hi('FloatBorder',  s:border,   s:bg_soft)
call s:hi('Cursor',       s:bg,       s:yellow)
call s:hi('CursorLine',   '',         s:bg_soft)
call s:hi('CursorColumn', '',         s:bg_soft)
call s:hi('CursorLineNr', s:yellow,   '',         'bold')
call s:hi('LineNr',       s:border,   '')
call s:hi('SignColumn',   '',         s:bg)
call s:hi('Visual',       '',         s:bg_hi)
call s:hi('VisualNOS',    '',         s:bg_hi)
call s:hi('Search',       s:bg,       s:yellow)
call s:hi('IncSearch',    s:bg,       s:orange)
call s:hi('Substitute',   s:bg,       s:red)
call s:hi('Pmenu',        s:fg,       s:bg_soft)
call s:hi('PmenuSel',     s:bg,       s:yellow)
call s:hi('PmenuSbar',    '',         s:bg_hi)
call s:hi('PmenuThumb',   '',         s:border)
call s:hi('StatusLine',   s:fg,       s:bg_soft)
call s:hi('StatusLineNC', s:fg_muted, s:bg_soft)
call s:hi('TabLine',      s:fg_muted, s:bg_soft)
call s:hi('TabLineFill',  '',         s:bg)
call s:hi('TabLineSel',   s:yellow,   s:bg_hi,    'bold')
call s:hi('WinSeparator', s:border,   '')
call s:hi('VertSplit',    s:border,   '')
call s:hi('Folded',       s:fg_muted, s:bg_soft)
call s:hi('FoldColumn',   s:border,   '')
call s:hi('MatchParen',   s:yellow,   s:bg_hi,    'bold')
call s:hi('Directory',    s:blue,     '')
call s:hi('Title',        s:yellow,   '',         'bold')
call s:hi('Question',     s:blue,     '')
call s:hi('MoreMsg',      s:teal,     '')
call s:hi('WarningMsg',   s:orange,   '')
call s:hi('ErrorMsg',     s:red,      '',         'bold')
call s:hi('NonText',      s:border,   '')
call s:hi('SpecialKey',   s:border,   '')
call s:hi('Conceal',      s:fg_muted, '')
call s:hi('ColorColumn',  '',         s:bg_soft)
call s:hi('SpellBad',     s:red,      '',         'undercurl')
call s:hi('SpellCap',     s:blue,     '',         'undercurl')

" --- Diff ---
call s:hi('DiffAdd',      '',         s:diff_add)
call s:hi('DiffChange',   '',         s:diff_chg)
call s:hi('DiffDelete',   s:red,      s:diff_del)
call s:hi('DiffText',     s:fg_alt,   s:diff_chg, 'bold')

" --- Diagnostics ---
call s:hi('DiagnosticError', s:red,    '')
call s:hi('DiagnosticWarn',  s:orange, '')
call s:hi('DiagnosticInfo',  s:blue,   '')
call s:hi('DiagnosticHint',  s:teal,   '')

" --- Syntax ---
call s:hi('Comment',      s:fg_muted, '',         'italic')
call s:hi('Constant',     s:orange,   '')
call s:hi('String',       s:green,    '')
call s:hi('Character',    s:green,    '')
call s:hi('Number',       s:teal,     '')
call s:hi('Boolean',      s:orange,   '')
call s:hi('Float',        s:teal,     '')
call s:hi('Identifier',   s:fg,       '')
call s:hi('Function',     s:blue,     '')
call s:hi('Statement',    s:red,      '')
call s:hi('Conditional',  s:red,      '')
call s:hi('Repeat',       s:red,      '')
call s:hi('Label',        s:yellow,   '')
call s:hi('Operator',     s:fg,       '')
call s:hi('Keyword',      s:red,      '')
call s:hi('Exception',    s:red,      '')
call s:hi('PreProc',      s:magenta,  '')
call s:hi('Include',      s:red,      '')
call s:hi('Define',       s:magenta,  '')
call s:hi('Macro',        s:magenta,  '')
call s:hi('Type',         s:violet,   '')
call s:hi('StorageClass', s:red,      '')
call s:hi('Structure',    s:violet,   '')
call s:hi('Typedef',      s:violet,   '')
call s:hi('Special',      s:orange,   '')
call s:hi('SpecialChar',  s:magenta,  '')
call s:hi('Tag',          s:yellow,   '')
call s:hi('Delimiter',    s:fg,       '')
call s:hi('SpecialComment', s:fg_muted, '', 'bold')
call s:hi('Debug',        s:orange,   '')
call s:hi('Underlined',   s:blue,     '',         'underline')
call s:hi('Error',        s:red,      '')
call s:hi('Todo',         s:bg,       s:yellow,   'bold')

" --- Terminal ANSI ---
let g:terminal_ansi_colors = [
  \ s:bg, s:red, s:green, s:yellow,
  \ s:blue, s:magenta, s:teal, s:fg,
  \ s:border, s:br_red, s:br_green, s:br_yellow,
  \ s:br_blue, s:br_magenta, s:br_teal, s:fg_alt,
  \ ]
