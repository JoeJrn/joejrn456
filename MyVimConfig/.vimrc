
set clipboard=unnamedplus
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

"------------------------------------------------------
"kep-mapping for using vim efficiently
"------------------------------------------------------
"
noremap j h
noremap h i
noremap k j
noremap i k
noremap K o
noremap I O
noremap J I
noremap L A

"------------------------------------------------------
"vim-plug
"------------------------------------------------------

call plug#begin('~/.vim/plugged')

"Plugins for code completion---

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plugins for file exporation---
Plug 'vim-scripts/The-NERD-tree'

Plug 'vim-airline/vim-airline'

"color theme---
"Plug 'rainglow/vim'
"Plug 'morhetz/gruvbox'
"Plug 'flazz/vim-colorschemes'
Plug 'mhartington/oceanic-next'

call plug#end()

"------------------------------------------------------
"coc.nvim
"------------------------------------------------------
"
"Use <cr> to confirm completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


"------------------------------------------------------
"gruvbox configuration
"------------------------------------------------------
"
set background=dark

"------------------------------------------------------
"rainglow configuration
"------------------------------------------------------
"
"colorscheme bold
"
"
"------------------------------------------------------
"vim-colorscheme configuration
"------------------------------------------------------
"
"colorscheme kate

"------------------------------------------------------
"vim-colorscheme configuration
"------------------------------------------------------
"
" Theme
 syntax enable
" for vim 7
 set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext

"
