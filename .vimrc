syn on
set mouse=a
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set rnu
set tags+=./tags
set hidden
set nocompatible

call pathogen#infect()
call pathogen#helptags()

" encoding menu (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=8bit-koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=8bit-cp1251<CR>
menu Encoding.ibm-866 :e ++enc=8bit-ibm866<CR>
menu Encoding.utf-8 :e ++enc=2byte-utf-8 <CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
" display encoding menu
nmap <F7> :emenu Encoding.<TAB>
vmap <F7> <esc>:emenu Encoding.<TAB>
imap <F7> <esc>:emenu Encoding.<TAB>
" string end format
set wildmenu
set wcm=<Tab>
menu Encoding.End_line_format.unix<Tab><C-F7> :set fileformat=unix<CR>
menu Encoding.End_line_format.dos<Tab><C-F7> :set fileformat=dos<CR>
menu Encoding.End_line_format.mac<Tab><C-F7> :set fileformat=mac<CR>
nmap <F8> :emenu Encoding.End_line_format.<TAB>

map <F12> :!ctags -f tags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q -I  _GLIBCXX_NOEXCEPT .<CR>
map <F9> :wa<CR>:make!<CR>
imap <F9> <Esc>:wa<CR>:make!<CR>
set exrc
set secure 
map <Leader>l :E<CR> 
map <Leader>f :NERDTreeFind<CR>

nnoremap <C-l> :NERDTree<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd CursorMoved * exe printf('match Search /\V\<%s\>/', escape(expand('<cword>'), '/\'))

map <ESC>[1;5D <C-Left>
map <ESC>[1;5C <C-Right>
map! <ESC>[1;5D <C-left>
map! <ESC>[1;5C <C-Right>

command W w !sudo tee % > /dev/null

