set nu
set clipboard=unnamedplus
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

"------------------------------------------------------
"key-mapping for using vim efficiently
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

"remap keys to save files 
noremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>

"------------------------------------------------------
"vim-plug
"------------------------------------------------------

call plug#begin('~/.vim/plugged')

"Plugins for code completion---

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plugins for file exporation---
Plug 'vim-scripts/The-NERD-tree'

Plug 'vim-airline/vim-airline'

"markdown
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

"color theme---
"Plug 'rainglow/vim'
"Plug 'morhetz/gruvbox'
"Plug 'flazz/vim-colorschemes'
Plug 'mhartington/oceanic-next'
			\
"template
Plug 'aperezdc/vim-template'

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

"------------------------------------------------------
"nerdtree configuration
"------------------------------------------------------
"https://github.com/preservim/nerdtree
"
"remap keys to open and use nerd tree.
nnoremap tt :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"remapping '' to open split then key 'i' can be 'go up'
let NERDTreeMapOpenSplit = '' 

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"------------------------------------------------------
"vim-instant-markdown configuration
"------------------------------------------------------
"https://github.com/instant-markdown/vim-instant-markdown
"execute :help vim-instant-markdown-configuration to read more about what the different configuration options imply.
filetype plugin on
"auto start preview when open .md file.
let g:instant_markdown_autostart = 1 
noremap mk :InstantMarkdownPreview<CR>
noremap mq :InstantMarkdownStop<CR>


"------------------------------------------------------
"vim-template configuration
"------------------------------------------------------
"https://github.com/aperezdc/vim-template

"
"
"
