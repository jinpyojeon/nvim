set autoindent
set tabstop=4 shiftwidth=4 expandtab
set termguicolors

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'jaxbot/semantic-highlight.vim'
Plug 'cloudhead/neovim-fuzzy'
Plug 'mileszs/ack.vim'
Plug 'cloudhead/neovim-fuzzy'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'davidhalter/jedi-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'morhetz/gruvbox'

call plug#end()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

imap jj <Esc>

let g:NERDTreeChDirMode = 2  " Change cwd to parent node

let g:NERDTreeMinimalUI = 1  " Hide help text
let g:NERDTreeAutoDeleteBuffer = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let mapleader = "\<C-a>"
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>

nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <C-d> :NERDTreeToggle<CR>

hi Pmenu ctermbg=black ctermfg=white
colorscheme gruvbox

set clipboard=unnamedplus
