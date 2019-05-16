" use spaces instead of tabs
set expandtab
" set tab to four spaces
set shiftwidth=4
set tabstop=4

" make sure vim behaves nicely depending on what filetype you're using
filetype plugin on
filetype indent on

"enable syntax highlighting
syntax enable

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au BufReadPost * silent execute '!ctags %'
au BufWritePost * silent execute '!ctags %'
au VimLeave * silent execute '!rm -f tags'

set number
set scrolloff=5
colorscheme monokai-cherry
