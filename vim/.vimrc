" VIM Configuration Profile

syntax on
set number
set relativenumber
set encoding=UTF-8

call plug#begin()
    Plug 'christoomey/vim-tmux-navigator'
    "Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'yegappan/lsp'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'tjdevries/coc-zsh'
call plug#end()

" Use the PowerLine plugin. Change Python directory if needed.
set rtp+=$HOME/.local/lib/python3.8/site-packages/powerline/bindings/vim/

set background=dark
" let g:gruvbox_contrast_dark = 'hard'
colorscheme dracula

" Correct normal background
highlight Normal guibg=NONE ctermbg=none

" Fix NonText and vertical splits
highlight NonText guibg=NONE ctermbg=none
highlight VertSplit guibg=NONE ctermbg=none

" Fix StatusLine to have no background
highlight StatusLine guibg=NONE ctermbg=none
highlight StatusLineNC guibg=NONE ctermbg=none

" Correct background for keywords like 'set'
highlight Keyword ctermbg=none guibg=NONE guifg=#8be9fd

" Fix any possible inversion in statements
highlight Statement ctermbg=none guibg=NONE guifg=#8be9fd



autocmd BufNewFile,BufRead *.zshrc set filetype=zsh




" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256

" Always show the command as it is being typed.
set showcmd



" Tab is 4 spaces
set tabstop=4
set expandtab

