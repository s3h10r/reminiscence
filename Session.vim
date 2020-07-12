let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
xnoremap <silent> <Plug>(Limelight) :Limelight
nnoremap <silent> <Plug>(Limelight) :set opfunc=limelight#operatorg@
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set nomodeline
set mouse=a
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/seoul256.vim,~/.vim/plugged/goyo.vim,~/.vim/plugged/limelight.vim,~/.vim/pack/python-mode/start/python-mode,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim81,~/.vim/pack/python-mode/start/python-mode/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftround
set shiftwidth=4
set shortmess=aoO
set showbreak=>\ \ \\
set showcmd
set showmatch
set showtabline=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set wildignore=*.pyc
set winminheight=0
set winminwidth=0
set winwidth=1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/development/reminiscence
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ./pages/admin.py
$argadd ./pages/apps.py
$argadd ./pages/custom_read.py
$argadd ./pages/dbaccess.py
$argadd ./pages/forms.py
$argadd ./pages/__init__.py
$argadd ./pages/models.py
$argadd ./pages/summarize.py
$argadd ./pages/urls.py
$argadd ./pages/utils.py
$argadd ./pages/views.py
tabnew
tabnew
tabnew
tabrewind
edit ./pages/views.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 35 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 88 + 87) / 174)
exe '2resize ' . ((&lines * 35 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 85 + 87) / 174)
exe '3resize ' . ((&lines * 9 + 24) / 48)
argglobal
if bufexists("./pages/views.py") | buffer ./pages/views.py | else | edit ./pages/views.py | endif
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> \r :PymodeRun
nnoremap <buffer> <silent> \r :PymodeRun
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
60
normal! zo
63
normal! zo
69
normal! zo
71
normal! zo
73
normal! zo
79
normal! zo
81
normal! zo
83
normal! zo
85
normal! zo
93
normal! zo
100
normal! zo
100
normal! zo
100
normal! zo
100
normal! zo
102
normal! zo
451
normal! zo
472
normal! zo
451
normal! zc
476
normal! zo
483
normal! zo
483
normal! zc
476
normal! zc
505
normal! zo
506
normal! zo
508
normal! zo
509
normal! zo
634
normal! zo
637
normal! zo
let s:l = 25 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 05|
wincmd w
argglobal
if bufexists("templates/home.html") | buffer templates/home.html | else | edit templates/home.html | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 47 - ((19 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 011|
wincmd w
argglobal
if bufexists("./pages/models.py") | buffer ./pages/models.py | else | edit ./pages/models.py | endif
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> \r :PymodeRun
nnoremap <buffer> <silent> \r :PymodeRun
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
60
normal! zo
64
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
82
normal! zo
85
normal! zo
let s:l = 21 - ((1 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
wincmd w
exe '1resize ' . ((&lines * 35 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 88 + 87) / 174)
exe '2resize ' . ((&lines * 35 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 85 + 87) / 174)
exe '3resize ' . ((&lines * 9 + 24) / 48)
tabnext
edit ./templates/includes/latest_entries.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 24) / 48)
exe '2resize ' . ((&lines * 22 + 24) / 48)
argglobal
if bufexists("./templates/includes/latest_entries.html") | buffer ./templates/includes/latest_entries.html | else | edit ./templates/includes/latest_entries.html | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
9
normal! zo
let s:l = 9 - ((4 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 08|
wincmd w
argglobal
if bufexists("templates/home.html") | buffer templates/home.html | else | edit templates/home.html | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
40
normal! zo
52
normal! zo
57
normal! zo
63
normal! zo
70
normal! zo
let s:l = 43 - ((10 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 06|
wincmd w
exe '1resize ' . ((&lines * 22 + 24) / 48)
exe '2resize ' . ((&lines * 22 + 24) / 48)
tabnext
edit restapi/views.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 11 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 84 + 87) / 174)
exe '2resize ' . ((&lines * 6 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 84 + 87) / 174)
exe '3resize ' . ((&lines * 26 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 84 + 87) / 174)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 89 + 87) / 174)
exe '5resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 5resize ' . ((&columns * 89 + 87) / 174)
argglobal
if bufexists("restapi/views.py") | buffer restapi/views.py | else | edit restapi/views.py | endif
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> \r :PymodeRun
nnoremap <buffer> <silent> \r :PymodeRun
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
14
normal! zo
25
normal! zo
27
normal! zo
36
normal! zo
39
normal! zo
41
normal! zo
51
normal! zo
58
normal! zo
61
normal! zo
66
normal! zo
68
normal! zo
73
normal! zo
76
normal! zo
81
normal! zo
87
normal! zo
88
normal! zo
90
normal! zo
93
normal! zo
96
normal! zo
106
normal! zo
110
normal! zo
113
normal! zo
120
normal! zo
131
normal! zo
134
normal! zo
let s:l = 74 - ((6 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
74
normal! 09|
wincmd w
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=wipe
setlocal buflisted
setlocal buftype=quickfix
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'qf'
setlocal filetype=qf
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=manual
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%t%{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'qf'
setlocal syntax=qf
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal winfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
if bufexists("reminiscence/dockersettings.py") | buffer reminiscence/dockersettings.py | else | edit reminiscence/dockersettings.py | endif
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> \r :PymodeRun
nnoremap <buffer> <silent> \r :PymodeRun
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
96
normal! zo
let s:l = 94 - ((14 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
94
normal! 0
wincmd w
argglobal
if bufexists("../klartxt/klartxt/restapi/views.py") | buffer ../klartxt/klartxt/restapi/views.py | else | edit ../klartxt/klartxt/restapi/views.py | endif
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> \r :PymodeRun
nnoremap <buffer> <silent> \r :PymodeRun
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
let s:l = 32 - ((7 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
wincmd w
argglobal
if bufexists("../klartxt/klartxt/klartxt/dockersettings.py") | buffer ../klartxt/klartxt/klartxt/dockersettings.py | else | edit ../klartxt/klartxt/klartxt/dockersettings.py | endif
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> \r :PymodeRun
nnoremap <buffer> <silent> \r :PymodeRun
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
50
normal! zo
let s:l = 51 - ((3 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 06|
wincmd w
exe '1resize ' . ((&lines * 11 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 84 + 87) / 174)
exe '2resize ' . ((&lines * 6 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 84 + 87) / 174)
exe '3resize ' . ((&lines * 26 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 84 + 87) / 174)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 89 + 87) / 174)
exe '5resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 5resize ' . ((&columns * 89 + 87) / 174)
tabnext
edit patch-bookmarklets.txt
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("patch-bookmarklets.txt") | buffer patch-bookmarklets.txt | else | edit patch-bookmarklets.txt | endif
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:-,fb:*,n:>
setlocal commentstring=
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'text'
setlocal filetype=text
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'text'
setlocal syntax=text
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termmode=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 54 - ((45 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 0
tabnext 3
badd +1 ./pages/admin.py
badd +1 ./pages/apps.py
badd +1 ./pages/custom_read.py
badd +1 ./pages/dbaccess.py
badd +1 ./pages/forms.py
badd +1 ./pages/__init__.py
badd +1 ./pages/models.py
badd +1 ./pages/summarize.py
badd +1 ./pages/urls.py
badd +1 ./pages/utils.py
badd +1 ./pages/views.py
badd +1 ./templates/includes/latest_entries.html
badd +1 restapi/views.py
badd +1 patch-bookmarklets.txt
badd +43 templates/home.html
badd +1 reminiscence/dockersettings.py
badd +1 ../klartxt/klartxt/restapi/views.py
badd +1 ../klartxt/klartxt/klartxt/dockersettings.py
badd +26 Dockerfile.armv7l.vostok
badd +1 docker-compose.development.yml
badd +1 docker-test-vostok_flavour.sh
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=aoO
set winminheight=0 winminwidth=0
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
