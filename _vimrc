source $VIMRUNTIME/../_vimrc

syntax on
colorscheme darkblue

set number
set colorcolumn=80
if has("gui_running")
	set columns=83 lines=28
endif

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

nmap <F12> :w!<CR>:!mingw32-make OS=win32 TAIL=-n17<CR>
imap <F12> <ESC>:w!<CR>:!mingw32-make OS=win32 TAIL=-n17<CR><INS>

nmap <c-t> :tabf<space>
imap <c-t> <ESC>:tabf<space>
nmap <c-w> ZZ
imap <c-w> <ESC>ZZ

au BufNewFile,BufRead *.log set autoread

