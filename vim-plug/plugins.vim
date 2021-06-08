" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Files
  Plug 'tpope/vim-eunuch'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  " Plug 'tpope/vim-commentary'
  Plug 'preservim/nerdcommenter'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  "Plug 'tpope/vim-sleuth'

  " Text Navigation
  Plug 'terryma/vim-multiple-cursors'
  " Add some color
  "Plug 'norcalli/nvim-colorizer.lua'
  Plug 'lilydjwg/colorizer'

  Plug 'junegunn/rainbow_parentheses.vim'
  " Better Syntax Support
  " That sucker must be done before loading vim_polyglot
  " let g:polyglot_disabled = ['csv']
  Plug 'sheerun/vim-polyglot'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  Plug 'yazgoo/unicodemoji'
  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'

  " Closetags
  Plug 'alvan/vim-closetag'
  " Themes
  Plug 'gruvbox-community/gruvbox'
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "Plug 'nvim-lua/popup.nvim'
  "Plug 'nvim-lua/plenary.nvim'
  "Plug 'nvim-telescope/telescope.nvim'
  "Plug 'nvim-telescope/telescope-fzy-native.nvim'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Making stuff
  Plug 'neomake/neomake'
  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  " Vim Markdown
  " Plug 'godlygeek/tabular'
  " Plug 'plasticboy/vim-markdown'
  " Vim Markdown Preview
  "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  " If you have nodejs and yarn
  " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

  call plug#end()

  " Automatically install missing plugins on startup
  autocmd VimEnter *
        \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \|   PlugInstall --sync | q
        \| endif
