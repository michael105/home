"
"
" let g:syntastic_c_compiler_options = '-ansi -include /home/micha/prog/minilib/syntaxcheck.h'
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

Plugin 'ObserverOfTime/coloresque.vim'
Plugin 'ap/vim-css-color'
 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
 " Plugin 'L9'
 " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Install L9 and avoid a Naming conflict if you've already installed a
 " different version somewhere else.
 " Plugin 'ascenator/L9', {'name': 'newL9'}

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

" vundle ..

" Plugin 'ap/vim-css-color'


"
"
"
"
"
"möglicherweise setmetamode bin in der Shell ausführen
" oder mit !
set nocompatible
set hidden
syntax on
set autoindent
set history=100
set tabstop=2
" spaces for indenting, autoindent
set shiftwidth=4
"set mouse=a
set mouse=n


map <C-S> :source ~/.vimrc<CR>
map! <C-S> <ESC>:source ~/.vimrc<CR>

map <C-D> i /*   */<Left><Left><Left><Left>
map! <C-D> /*   */<Left><Left><Left><Left>
map <C-Z> i /* ------------------------------------------------------------------------- */
map! <C-Z> /* ------------------------------------------------------------------------- */

map! <C-B> /* ------------------------------------------------------------------------- */<CR>/**<CR><CR>**//* ---------------------------------------------------------------------- */<UP><SPACE><SPACE><SPACE><SPACE><SPACE><SPACE>


"  TreeExplorer
"map <F8> :call VTreeToggle()<CR>
"map - :call VTreeToggle()<CR><C-w>h
"map! - <ESC>:call VTreeToggle()<CR><C-w>h
"map + <C-w>l
"map! + <C-w>l
"
"let vtree_is_open=0
"function! VTreeToggle()
"    if g:vtree_is_open
"        "let g:vtree_is_open = 
"    else
"				:30vsplit
"				:VTreeExplore
"        let g:vtree_is_open = 1
"    endif
"endfunction
"

colorscheme torte

"set ruler
"set showcmd
set incsearch
filetype plugin indent on
filetype plugin on
set winminheight=0

set nofoldenable


"Key Mappings ==========================================


"map (ö,ä .. mapped to {}, [], $ to $%, apostrophe to /, and oh. \ ) 
source ~/.vim/mapping
"map <C-\> :source ~/.vim/mapping
"map umlauts, etc to normal
map <C-\> :source ~/.vim/unmapping<CR>
map! <C-\> <ESC>:source ~/.vim/unmapping<CR>a


map <F9> :NERDTreeToggle<CR>
map! <F9> <ESC>:NERDTreeToggle<CR>


" Save
map! <F2> <ESC>:w<CR>a
map <F2> :w<CR>

"Session support
map <S-F2> :mks! .vimsession<CR>map! <S-F2> <ESC>:mks! .vimsession<CR>
"set ssop="blank,buffers,curdir,folds,help,tabpages,winsize" 

" Scroll up and down
map <C-J> <C-e>
map [1;3A <C-e>
map! [1;3A <C-e>
map <M-Up> <C-e>
map! <M-Up> <C-e>
map  <C-y>
map <M-Down> <C-y>
map! <M-Down> <C-y>
map [1;3B <C-y>
map [1;3B <C-y>

"map <S-Up> <C-e>
"map! <S-Up> <C-e>


" PageUp / Down Ctrl-Up/Down
map [1;5B <PageDown>
map! [1;5B <PageDown>
map [1;5A <PageUp>
map! [1;5A <PageUp>

map j <PageDown>
map! j <PageDown>
map k <PageUp>
map! k <PageUp>

" map <c-K> <c-k>
"map Or insert
"map! Or insert


" End / Begin of Line M-l, M-h
map l  <End>
map! l <End>
map h <Home>
map! h <Home>
" M-Left/Right
map  [1;3C <End>
map! [1;3C <End>
map  [1;3D <Home>
map! [1;3D <Home>

" word right
map L W


"moving
"(lin)
map [1;5C $
map! [1;5C <ESC>$a
map [1;5D ^OD 
map! [1;5D <ESC>^ODi 

" minibufexplorer shortcuts
"map m \mbe
"map! m \mbe

"LINUX
"map [1;3C :bn<CR>
"map [1;3D :bp<CR>
"map! [1;3C <ESC>:bn<CR>i
"map! [1;3D <ESC>:bp<CR>i
"ELINUX


"OSX
"map [1;2C :bn<CR>
"map [1;2D :bp<CR>
"map! [1;2C <ESC>:bn<CR>i
"map! [1;2D <ESC>:bp<CR>i

"map [1;2C :bn<CR>
"map [1;2D :bp<CR>
"map! [1;2C <ESC>:bn<CR>i
"map! [1;2D <ESC>:bp<CR>i


"map! <C-w> <ESC>:w<CR>i
":map <C-w> :w<CR>

"let mapleader="^"
"map ^w :w<CR>
"map! ^w <ESC>:w<CR>i
"map! ^   
"map! ^^ ^ 

"map! ^s <ESC>:source ~/.vimrc<CR>i
"map! ^+ ~

map  f $
map! f <ESC>$a

map b 0
map! b <ESC>0i
"EOSX


"Window right/left
" <C+M+Cursor>
map [1;7C <C-w>l
map [1;7D <C-w>h
map [1;7B <C-w>j
map [1;7A <C-w>k
map! [1;7D <ESC><C-w>h
map! [1;7C <ESC><C-w>l
map! [1;7A <ESC><C-w>k
map! [1;7B <ESC><C-w>j

"st 
map  <C-M-l> <C-w>l
map  <C-M-h> <C-w>h
map  <C-M-j> <C-w>j
map  <C-M-k> <C-w>k
map! <C-M-l> <ESC><C-w>l
map! <C-M-h> <ESC><C-w>h
map! <C-M-j> <ESC><C-w>j
"map! <C-k> <ESC><C-w>k



"Window split
map V <C-w>v
map H <C-w>s
map Q <C-w>q
map! V <ESC><C-w>v
map! H <ESC><C-w>s
map! Q <ESC><C-w>q



"Perlsupport
"Syntax Check
map <F3> :call Perl_SyntaxCheck()<CR><C-L>
map! <F3> <ESC>:call Perl_SyntaxCheck()<CR><C-L>


" minibufexplorer
map  [1;5C :bn<CR>
map  [1;5D :bp<CR>
map! [1;5C <ESC>:bn<CR>i
map! [1;5D <ESC>:bp<CR>i

map   :bn<CR>
map   :bp<CR>
map!  <ESC>:bn<CR>i
map!  <ESC>:bp<CR>i


"map   :bn<CR>
"map   :bp<CR>
"map!  <ESC>:bn<CR>i
"map!  <ESC>:bp<CR>i


"" Alt + Up / Down
"map [1;3B :bn<CR>
"map [1;3A :bp<CR>
"map! [1;3B <ESC>:bn<CR>i
"map! [1;3A <ESC>:bp<CR>i
"
""urxvt
"map <Down> :bn<CR>
"map <Up> :bp<CR>
"map! <Down> <ESC>:bn<CR>i
"map! <Up> <ESC>:bp<CR>i
"
"" fn - right/left
"map OF :bn<CR>
"map OH :bp<CR>
"map! OF <ESC>:bn<CR>i
"map! OH <ESC>:bp<CR>i
"
"" right/left
"map [1;5D :bp<CR>
"map [1;5C :bn<CR>
"map! [1;5D <ESC>:bp<CR>i
"map! [1;5C <ESC>:bn<CR>i



" Move window to the last ..
map <M-C-PageDown> :call Funcbufmoveright()<CR> 
map! <M-C-PageDown> <ESC>:call Funcbufmoveright()<CR>


" <F10> Show or hide the Taglist
map <F10> :TlistToggle<CR>
map! <F10> <ESC>:TlistToggle<CR>

" M-x
map x :confirm qa<CR>
map! x <ESC>:confirm qa<CR>



"Split window movement
map <M-C-Left> :wincmd h<CR>
map , :wincmd h<CR>
map <M-C-Right> :wincmd l<CR>
map . :wincmd l<CR>
map <M-C-Up> :wincmd k<CR>
map <M-C-Down> :wincmd j<CR>

map! <M-C-Left> <ESC>:wincmd h<CR>i
map! , <ESC>:wincmd h<CR>i
map! <M-C-Right> <ESC>:wincmd l<CR>i
map! . <ESC>:wincmd l<CR>i
map! <M-C-Up> <ESC>:wincmd k<CR>i
map! <M-C-Down> <ESC>:wincmd j<CR>i


" Insertion
"map! <C-Down> <ESC>o
"map! <C-Up> <ESC>O
"map <C-Down> o
"map <C-Up> O

"urxvt
"map! Ob <ESC>o
"map! Oa <ESC>O
"map Ob o
"map Oa O




"perl commands..
"						\ro
"Run Script of current buffer
"map <F5> \rr   
"map <F5> <ESC>\rr i


"Just a template..
"map <F4> :silent exe '!perl ./wxduplicates.pl &>/dev/pts/4 &'<CR>:redraw!<CR>
"map! <F4> <ESC>:silent exe '!perl ./wxduplicates.pl &>/dev/pts/4 &'<CR>:redraw!<CR>i
":map <F2> :w<CR>:execute 'silent !asciidoc -b html4 README.asc&>/dev/null'<CR>:redraw<CR>



" Open Source file

map	<C-x> :call SwitchHeader()<CR>
map!	<C-x> <ESC>:call SwitchHeader()<CR>




"map <C-s>s :call CSLineSymbol('s')<CR>
"map! <C-s>s <ESC>:call CSLineSymbol('s')<CR>
"map <C-s>c :call CSLineSymbol('c')<CR>
"map! <C-s>c <ESC>:call CSLineSymbol('c')<CR>


"Quickfix
map <F4> :cp<CR>
map! <F4> <ESC>:cp<CR>
map <F5> :cn<CR>
map! <F5> <ESC>:cn<CR>

map c :make<CR>
map! c <ESC>:make<CR>


nnoremap <f6> :call QuickfixToggle()<cr>


"Quickfix..
"
"map <F11> :cn<CR>
"map <F12> :cp<CR>
"map! <F11> <ESC>:cn<CR>i
"map! <F12> <ESC>:cp<CR>i


map <M-F11> :cw<CR>
"map <M-F11> :vert cw<CR>:set winwidth=60<CR>
map <S-F11> :cclose<CR>
map! <M-F11> <ESC>:cw<CR>
"map! <M-F11> <ESC>:vert cw<CR>:set winwidth=60<CR>
map! <S-F11> <ESC>:cclose<CR>



"cscope 

set cscopequickfix=s-,c-,d-,i-,t-,e-
" (Nach cscope -Rb)
" :cscope add cscope.out
" :cs find (f,s,..): find symbol, ...
" :vert cw 	display quickfix list in a window
"	CTRL-w L : Move Window to the right
"	:vertical resize N
" F11 / F12 : Vorwärts/Rückwärts im Quickfixwindow
" 

" ctags: 
" generate file: 
" exuberant-ctags --recurse *

if filereadable("cscope.out")
	cs add cscope.out
endif


command! -nargs=1 -nargs=1 -complete=tag Cs call Csfunc2(<f-args>)
function! Csfunc2(question)
		execute "scscope find" a:question
		execute "close"
		execute "cw"
endfunction



command! -nargs=1 -complete=tag Css call Csfunc('s', <f-args>)
"command! -nargs=1 -complete=tag Cs cscope find s <args>
function! Csfunc(action,symbol)
		execute "scscope find" a:action a:symbol
		execute "close"
		execute "cw"
endfunction

command! -nargs=1 -complete=tag Cc call Csfunc('c',<f-args>)
"command! -nargs=1 -complete=tag Cc cscope find c <args>


function! CSLineSymbol(action)
		perl << EOP
		($line,$col) = $curwin->Cursor();
		$l = $curbuf->Get($line);
		$l =~ /(\w*)\(/;
		if ( $1 ) {
				VIM::Msg($1);
				VIM::DoCommand("call Csfunc(a:action,'$1')");
		}
EOP

endfunction


highlight Directory ctermfg=Green
highlight Search ctermbg=Blue ctermfg=White






"Statusline zeigen
set laststatus=2



set statusline=%-F\ %-0M\ %-R\ %35l\ %c\ \ \ asc:%b\ \ buffer:%n\ %L\ \ %P 

"map <C-s> :set laststatus=2<CR>
"map <C-a> :set laststatus=10<CR>


map <M-x> :w<CR>:q<CR>

highlight Statusline cterm=NONE, ctermbg=18, ctermfg=14
"highlight Statusline cterm=NONE, ctermbg=4
"Syntax highlight
let perl_no_scope_in_variables=1


set ai

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction



:let g:miniBufExplMapWindowNavArrows=1

function! Funcbufmoveright()
perl << EOP
	$f = $curbuf->Name();
	@pos = $curwin->Cursor();
  VIM::Msg($f);
	VIM::DoCommand('write');
	VIM::DoCommand('bw');
	VIM::DoCommand("e $f");
	$curwin->Cursor(@pos);
EOP
endfunction



function! SwitchHeader()
		perl << EOP
		$n = $curbuf->Name();
		$f = 0;
		if ($n =~ /\.cpp$/ ){
				$f = 1;			
				$n =~ s/\.cpp$/.h/;
		}  elsif ($n=~ /\.h$/ ){
		 		$f = 1;
				$n =~ s/\.h$/.cpp/;
		} 
		if ( $f) {
  			VIM::Msg($n);
				#foreach $b ( VIM::Buffers() ){
				#	if ( $b->Name() eq $n ){
				#			VIM::DoCommand(":b $n");
				#			return;
				#	}
				#}
				if ( -e $n ){
						VIM::DoCommand(":e $n");
						} else {
						VIM::Msg("New File $n","Error");
						VIM::DoCommand(":e $n");
					}
		} else  {
		     VIM::Msg("Header/Implementation not found", "Error");
		}

EOP
endfunction

" dbext variables
" :help dbext 
" for help

"let g:dbext_default_type   = 'MYSQL'
"let g:dbext_default_user   = 'micha'
"let g:dbext_default_passwd = 'mister'
"let g:dbext_default_profile_MYSQL_Unternehmen = 'type=MYSQL:user=micha:passwd=mister:dbname=Unternehmen'
"
"let g:dbext_default_type   = 'PGSQL'
"let g:dbext_default_user   = 'micha'
"let g:dbext_default_passwd = 'mister'
"let g:dbext_default_profile_PGSQL_Unternehmen = 'type=PGSQL:user=micha:passwd=mister:dbname=pgroupware'

" Sort alphabetic
let Tlist_Sort_Type = "name"
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type = "name"

highlight TagListFileName  ctermfg=Blue
highlight TagListTagName  ctermfg=Green
highlight TagListTagScope  ctermfg=Green
highlight TagListTitle ctermfg=Magenta
highlight TagListComment ctermfg=Brown

highlight Folded ctermfg=DarkGreen




let g:dbext_default_type   = 'PGSQL'
let g:dbext_default_user   = 'micha'
let g:dbext_default_passwd = 'mister'
let g:dbext_default_profile_PGSQL_Geo = 'type=PGSQL:user=micha:passwd=mister:dbname=geo'

let g:dbext_default_profile_PGSQL_va = 'type=PGSQL:user=micha:passwd=mister:dbname=perlgroupware:host=192.168.24.2'
let g:dbext_default_profile_MYSQL_Unternehmen = 'type=MYSQL:user=micha:passwd=mister:dbname=Unternehmen'


"map <F8> :DBExecSQLUnderCursor<CR>
"map! <F8> <ESC>:DBExecSQLUnderCursor<CR> i
"map <F6> :DBSelectFromTable<CR>
"map! <F6> <ESC>:DBSelectFromTable<CR> i

"OSX


map <c-m-l> :source ~/.vim/mapping<CR>


autocmd BufRead,BufNewFile *.asciidoc map <F12> mz<ESC>:w<CR>:execute "%!cat - && asciidoc -b html % && xdotool windowraise ".wid." && xdotool windowfocus ".wid." && xdotool key --window ".wid." F5 && xdotool windowfocus ".vimid<CR>'z
autocmd BufRead,BufNewFile *.asciidoc map! <F12> <ESC>mz:w<CR>:execute "%!cat - && asciidoc -b html % && xdotool windowraise ".wid." && xdotool windowfocus ".wid." && xdotool key --window ".wid." F5 && xdotool windowfocus ".vimid<CR>'zi

"map <F12> mz:w<CR>:execute "%!cat - && asciidoc -b html % && xdotool windowraise ".wid." && xdotool windowfocus ".wid." && xdotool key --window ".wid." F5 && xdotool windowfocus ".vimid<CR>'z
"map! <F12> <ESC>mz:w<CR>:execute "%!cat - && asciidoc -b html % && xdotool windowraise ".wid." && xdotool windowfocus ".wid." && xdotool key --window ".wid." F5 && xdotool windowfocus ".vimid<CR>'zi

let wid=0x2400007
let vimid=0x1800003



" Return to last edit position when opening files (You want this!)
"autocmd BufReadPost *
"     \ if line("'\"") > 0 && line("'\"") <= line("$") "|
"      \   exe "normal! g`\"" |
"     \ endif


command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
		echo a:cmdline
		let expanded_cmdline = a:cmdline
		for part in split(a:cmdline, ' ')
				if part[0] =~ '\v[%#<]'
						let expanded_part = fnameescape(expand(part))
						let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
				endif
		endfor
		botright new
		setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
		call setline(1, 'You entered:    ' . a:cmdline)
		call setline(2, 'Expanded Form:  ' .expanded_cmdline)
		call setline(3,substitute(getline(2),'.','=','g'))
		execute '$read !'. expanded_cmdline
		setlocal nomodifiable
		1
endfunction
"
"function! s:ExecuteInShell(command)
"		let command = join(map(split(a:command), 'expand(v:val)'))
"		let winnr = bufwinnr('^' . command . '$')
"		silent! execute  winnr < 0 ? 'botright new ' . fnameescape(command) : winnr . 'wincmd w'
"		setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
"		echo 'Execute ' . command . '...'
"		silent! execute 'silent %!'. command
"		silent! execute 'resize ' . line('$')
"		silent! redraw
"		silent! execute 'au BufUnload <buffer> execute
"		bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
"		silent! execute 'nnoremap <silent> <buffer>
"		<LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
"		echo 'Shell command ' . command . ' executed.'
"endfunction
"command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
"
"
"
"
let g:coloresque_whitelist = [ 'css', 'haml', 'html', 'htmldjango', 'javascript', 'jsx', 'less', 'php', 'postcss', 'pug', 'qml', 'sass', 'scss', 'sh', 'stylus', 'svg', 'typescript', 'vim', 'vue', 'xml', 'conf']
