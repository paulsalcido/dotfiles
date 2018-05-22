set expandtab tabstop=4 shiftwidth=4
set smartindent
set autoindent
set nu

autocmd BufRead,BufNewFile *.pl setfiletype perl
autocmd BufRead,BufNewFile *.pm setfiletype perl
autocmd BufRead,BufNewFile *.md setfiletype markdown

let mapleader = "-"
let maplocalleader = "\\"

" -- will move a line down
" -_ will move a line up
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP

" -ev to edit my vimrc.
" -sv to source my vimrc.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Uppercase a word that I just finished typing with <ctrl+u>
inoremap <c-u> <esc>viwU<esc>i

" Replace escape with jk
inoremap jk <esc>
inoremap <esc> <nop>

nnoremap H <Home>
nnoremap L <End>

iabbrev mynm Paul Salcido
iabbrev ssig Paul Salcido<cr>paulsalcido.79@gmail.com
iabbrev wbst https://gitlab.salcido.io/

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

vnoremap <leader>" <esc>`<i"<esc>`>i"

" Quick Comment Settings ------------------------ {{{
augroup mycomments
    autocmd!
    autocmd FileType perl   nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType vim    nnoremap <buffer> <localleader>c I"<esc>
augroup END
" }}}

" Search Settings ------------------------------- {{{
augroup mysearch
    autocmd!
augroup END
" }}}

" Movement Settings ----------------------------- {{{
augroup mymoves
    autocmd!
    autocmd FileType perl   onoremap in( :<c-u>normal! f(vi(<cr>
    autocmd FileType perl   onoremap il( :<c-u>normal! F)vi(<cr>
    autocmd FileType perl   onoremap on( :<c-u>normal! f(va(<cr>
    autocmd FileType perl   onoremap ol( :<c-u>normal! F)va(<cr>
    autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rkvg_"<cr>
    autocmd FileType markdown onoremap oh :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rg_vk0"<cr>
    autocmd FileType markdown onoremap ih :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rkvg_"<cr>
    autocmd FileType markdown onoremap oh :<c-u>execute "normal! ?^[-=][-=]\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}

" VimScript File Settings ----------------------- {{{
augroup myvimrc
    autocmd!
    autocmd FileType vim    iabbrev <buffer> auc autocmd
    autocmd FileType vim    iabbrev <buffer> fty FileType
    autocmd FileType vim    iabbrev <buffer> iab iabbrev
    autocmd FileType vim    iabbrev <buffer> bfr <buffer>
    autocmd FileType vim    iabbrev <buffer> setl setlocal
    autocmd FileType vim    setlocal statusline=%.20F\ \-\ %l/%L\ \-\ %y
    autocmd FileType vim    setlocal foldmethod=marker
    autocmd FileType vim    setlocal foldlevelstart=1
augroup END
" }}}

" MyPerl File Setting --------------------------- {{{
augroup myperl
    autocmd!
    autocmd FileType perl   :iabbrev <buffer> hatr =head2<cr><cr>=cut<cr><cr>has [qw//] => (is => 'ro',isa => 'Any',);
    autocmd FileType perl   :iabbrev <buffer> ppp package
    autocmd FileType perl   :iabbrev <buffer> PPP __PACKAGE__
augroup END
" }}}
