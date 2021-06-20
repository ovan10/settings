syntax enable
set number
set relativenumber
set nowrap
set incsearch
set cindent
set termguicolors
set textwidth=80

"NERDtree
let NERDTreeShowLineNumbers=1
" use relativenumber
autocmd FileType nerdtree setlocal relativenumber

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'vimlab/split-term.vim'
Plug 'turbio/bracey.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
"Plug 'chemzqm/vim-jsx-improve'
Plug 'alvan/vim-closetag'
Plug 'rust-lang/rust.vim'
Plug 'nikvdp/ejs-syntax'
call plug#end()

filetype plugin indent on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"let g:gruvbox_material_background = "hard"
let ayucolor = "dark"
colorscheme ayu

let g:closetag_filenames = '*.js, *.jsx, *.ejs, *.html'
let g:closetag_filetypes = 'js, jsx, ejs, html'

let g:lightline#bufferline#enale_devicons = 1
let g:split_term_default_shell = "fish"
let g:user_emmet_leader_key='<S-Space>'

set guifont=DroidSansMono\Nerd\Font\11
let g:webdeviconsenable_nerdtree = 1
let g:webdevicons_enable_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" handle tabs
set tabstop=2 "tab width
set shiftwidth=2 "indent size

au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'})
au FileType ejs let b:AutoPairs = AutoPairsDefine({'<%': '%>'})

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

fun! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if (match(a:key, '[jk]'))
			windcmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <C-z> :NERDTreeToggle<CR> 

