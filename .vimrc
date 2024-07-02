"""""""""""""""
"   General   "
" Terminal
:tnoremap <Esc> <C-\><C-n>

" Escape with jk in insert mode
inoremap jk <ESC>

set scrolloff=5
set number relativenumber

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" Show trailing spaces
set list
set listchars+=trail:◦
"   General   "
"""""""""""""""

"""""""""""""""""
" Splits & tabs "
" Resize splits with Alt+J/K
noremap <A-k> :vertical resize +5<CR>
noremap <A-j> :vertical resize -5<CR>

" Tabs like in chrome with vimium
noremap <C-j> :tabprevious<CR>
noremap <C-k> :tabnext<CR>
noremap <C-t> :tabnew<CR>

" Move splits with Ctrl instead of Ctrl+W
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Splits & tabs "
"""""""""""""""""

""""""""""""""""""""""""
" transparency + KiTTY "
" https://github.com/kovidgoyal/kitty/issues/108
let &t_ut=''
set background=dark

if (empty($TMUX))
  if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" transparency + KiTTY "
""""""""""""""""""""""""

"""""""""""""""""
" Plugin config "
" EASYMOTION
" f is single-char, F is double-char bidirectional motion search
map f <Plug>(easymotion-s)
map F <Plug>(easymotion-s2)
" Plugin config "
"""""""""""""""""

""""""""""""
" Vim plug "
call plug#begin('~/.vim/plugged')
Plug 'dhvcc/nord-mint-vim' " Theme
Plug 'vim-airline/vim-airline' " Statusline
" Character jumping
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim' " editorconfig support
if !has("nvim")
  " NERDTree
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin' " Git status in NERDTree
  Plug 'scrooloose/nerdcommenter' " Ctrl+/ comment toggle
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ryanoasis/vim-devicons' " Icons for NERDTree

  " Git
  Plug 'airblade/vim-gitgutter'
endif
call plug#end()

if !has("nvim")
  """"""""""""
  " NerdTree "
  " Comment lines with Ctrl+/
  filetype plugin on
  nmap <C-_> <plug>NERDCommenterToggle

  " Ctrl+B toogle tree
  nmap <C-B> :NERDTreeToggle<CR>

  let NERDTreeShowLineNumbers=1
  let NERDTreeShowHidden=1
  let g:NERDTreeGitStatusWithFlags = 1
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:NERDTreeGitStatusNodeColorization = 1
  let g:NERDTreeColorMapCustom = {
      \ "Staged"    : "#0ee375",
      \ "Modified"  : "#d9bf91",
      \ "Renamed"   : "#51C9FC",
      \ "Untracked" : "#FCE77C",
      \ "Unmerged"  : "#FC51E6",
      \ "Dirty"     : "#FFBD61",
      \ "Clean"     : "#87939A",
      \ "Ignored"   : "#808080"
      \ }
  let g:NERDTreeIgnore = ['^node_modules$', '^venv$', '^.venv$', '^__pycache__$', '.sass-cache']
  :let g:NERDTreeShowLineNumbers=1
  :autocmd BufEnter NERD_* setlocal rnu
  "          "
  """"""""""""
endif
" Vim plug "
""""""""""""

colorscheme nord
