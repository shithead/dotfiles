
" An example for a vimrc file.
"
" Maintainer:	PwnyTail <pwnytail at <<</>> dot de>
" Last change:	2014 Feb 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" change backup directory
set backupdir=~/.vim/backups/

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set tabstop=4
set sw=4
set expandtab
set clipboard=unnamed
set nu
set modeline
set colorcolumn=80
" set textwidth=79
set wildmenu
set title
let Tlist_Use_Right_Window = 1
" set enc=utf-8
set t_Co=256

set cursorline
set laststatus=2
set noshowmode
colorscheme depression
" colorscheme sunshine

" For Win32 GUI	: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptio	ns = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq
map <F8> :TlistToggle<CR>
map <F4> :GundoToggle<CR>
map <F5> :GitGutterToggle<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 79 characters.
  autocmd FileType text setlocal textwidth=79

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

  " Recognise file by extension
  autocmd BufEnter *.ctp set filetype=php
  autocmd BufEnter *.less set filetype=less
  autocmd BufEnter *.ds set filetype=javascript
  autocmd BufEnter *.json set filetype=javascript
  autocmd BufEnter *.isml set filetype=html
  autocmd BufEnter *.ejs set filetype=html

  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

set filetype=off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'Lokaltog/powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/gundo.vim'
Bundle 'airblade/vim-gitgutter'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/Syntastic'
" non github repos
Bundle 'http://git.devnull.li/ikiwiki-nav.git'
Bundle 'http://git.devnull.li/ikiwiki-syntax.git'
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

" Syntastic highlight
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_pyhon_checkers = ['py3kwarn'] 
"let g:syntastic_python_py3kwarn_args = '--ignore=W191,E501,E121,E122,E123,E128,E225,W291,E195,E201,E302'
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_c_check_header = 1
let g:syntastic_c_auto_refresh_includes = 1
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_checkers = ['g++']
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_check_header = 1
"set statusline=%F%m%r%h%w\ %y%=[Buffer\:\ %n][Lines\:\ %l\/%L][Column\:\ %c][%p%%]
" Setup syntastic filetypes
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['javascript', 'php' ],
                           \ 'passive_filetypes': ['puppet'] }

let g:ctrlp_show_hidden = 1

" ------------------------------------------------------------------------------
" Powerline
" ------------------------------------------------------------------------------
set rtp+=/usr/local/lib/python2.7/site-packages/Powerline-beta-py2.7.egg/powerline/bindings/vim

"let g:Powerline_symbols = 'fancy'
let g:powerline_symbols = 'compatible'
let g:powerline_dividers_override = ['', '', '', '']
let g:powerline_config_path = '/usr/home/PwnyTail/.vim/bundle/powerline/powerline/config_files'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
