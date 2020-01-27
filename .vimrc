" FIRST TIME RUNNING
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" vim +PluginInstall +qall

" From Vundle GitHub

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" Plugin for syntax highlighting
"  Plugin 'nachumk/systemverilog.vim'
Plugin 'vhda/verilog_systemverilog.vim'

" Let matchit highlight begin/end
Plugin 'vimtaku/hl_matchit.vim'

" Nice status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Font patch
Plugin 'Lokaltog/powerline-fonts'

" Theme
Plugin 'lifepillar/vim-solarized8'
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal


" QOL Improvements from Cole, Xianmeng
set nu " Add line numbers
set mouse=a " Allow mouse control
set encoding=utf-8

set autoindent
set tabstop=4
set shiftwidth=4
"set expandtab " tabs -> spaces
set noexpandtab " tabs -/-> spaces

" Match keywords begin/end similar to brackets
runtime macros/matchit.vim
" Start highlighting pairs on startup
let g:hl_matchit_enable_on_vim_startup = 1

" Airline settings -- https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
set guifont=Liberation\ Mono\ for\ Powerline\ 10
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" "let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" "let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme='badwolf'

" Colors
set t_Co=256 " This is bad, but also an easy fix.

silent! colorscheme solarized8_high " Pretty good theme
set background=dark
