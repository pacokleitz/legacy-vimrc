"                                                             
"  /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$$  /$$$$$$  /$$    /$$
" /$$__  $$ |____  $$ /$$__  $$|____ /$$/ /$$__  $$|  $$  /$$/
"| $$  \ $$  /$$$$$$$| $$  \__/   /$$$$/ | $$$$$$$$ \  $$/$$/ 
"| $$  | $$ /$$__  $$| $$        /$$__/  | $$_____/  \  $$$/  
"| $$$$$$$/|  $$$$$$$| $$       /$$$$$$$$|  $$$$$$$   \  $/   
"| $$____/  \_______/|__/      |________/ \_______/    \_/    
"| $$      @parzev https://github.com/parzev                                                    
"| $$                                                         
"|__/                                                         
"                                                             

set nocompatible              " be iMproved, required by Vundle
filetype off                  " required by Vundle
set encoding=utf-8            " required by Vundle

" -----------------------------------------------------------------------------
" Vundle configuration
" -----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim/     " edit this path (should be $HOME/vimfiles/bundle/Vundle.vim/ on Windows)
call vundle#begin('~/.vim/bundle/')   " edit this path too ( should be $HOME/vimfiles/bundle/ on Windows)

"Utility
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-startify'

"Programming
Plugin 'Valloric/YouCompleteMe'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'aperezdc/vim-template'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'lervag/vimtex'

"Theme/Interface
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Colorschemes
Plugin 'dracula/vim'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'whatyouhide/vim-gotham'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'raphamorim/lucario'
Plugin 'jdsimcoe/abstract.vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'jacoborus/tender.vim'

"Games
Plugin 'johngrib/vim-game-code-break'

call vundle#end()            " required by Vundle
filetype plugin indent on    " required by Vundle

" -----------------------------------------------------------------------------
" PLUGIN SETTINGS
" -----------------------------------------------------------------------------
"*** vim-airline
let g:airline_theme='tender' "or luna
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"*** vim-template
let g:username='Paco KLEITZ'
let g:email='pacokleitz@pm.me'

"*** ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" I'm using MAJ key as the ¤ key with xmodmap on Linux
let g:UltiSnipsExpandTrigger="¤"
let g:UltiSnipsJumpForwardTrigger="¤"
let g:UltiSnipsJumpBackwardTrigger="²"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"*** youcompleteme
"let g:ycm_global_ycm_extra_conf = ~/.ycm_extra_conf.py 
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_extra_conf_globlist = ['~/.ycm_extra_conf.py']
let g:ycm_filetype_blacklist = {'julia': 1}

"*** syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'mode': 'passive'}

"*** julia-vim
let g:latex_to_unicode_auto = 1

"*** startify
    let g:startify_lists = [
              \ { 'type': 'files',     'header': ['   Recently used files']            },
              \ { 'type': 'dir',       'header': ['   Current directory '. getcwd()] },
              \ { 'type': 'sessions',  'header': ['   Sessions']       },
              \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
              \ { 'type': 'commands',  'header': ['   Commands']       },
              \ ]
let g:startify_bookmarks = [ {'x': '~/.vimrc'}, {'y':'~/.zshrc'} ]
let g:startify_change_to_dir = 1
let g:startify_custom_header = [
    \ "                                 ",
    \ "        ________ ++     ________ ",
    \ "       /VVVVVVVV\++++  /VVVVVVVV\ ",
    \ "       \VVVVVVVV/++++++\VVVVVVVV/ ",
    \ "        |VVVVVV|++++++++/VVVVV/' ",
    \ "        |VVVVVV|++++++/VVVVV/' ",
    \ "       +|VVVVVV|++++/VVVVV/'+ ",
    \ "     +++|VVVVVV|++/VVVVV/'+++++ ",
    \ "   +++++|VVVVVV|/VVVVV/'+++++++++ ",
    \ "     +++|VVVVVVVVVVV/'+++++++++ ",
    \ "       +|VVVVVVVVV/'+++++++++ ",
    \ "        |VVVVVVV/'+++++++++ ",
    \ "        |VVVVV/'+++++++++ ",
    \ "        |VVV/'+++++++++ ",
    \ "        'V/'   ++++++ ",
    \ "                 ++ ",
    \ ]

"*** vimtex
"let g:vimtex_view_method = 'zathura'   -> sadly zathura is buggy on 4k screen
" -----------------------------------------------------------------------------
"  GENERAL
"  ----------------------------------------------------------------------------
set autoread                          " auto reload changed files
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set showcmd                           " show size of visual selection

" -----------------------------------------------------------------------------
" COLORS
" -----------------------------------------------------------------------------
if (has("termguicolors"))
     set termguicolors
endif

syntax on
colorscheme dracula
set cursorline        " enable highlighting of the current line

" -----------------------------------------------------------------------------
" INDENTATION
" -----------------------------------------------------------------------------
set tabstop=4        " set tab width in spaces
set shiftwidth=4     " set indent width in spaces
set expandtab        " convert tabs to spaces
set autoindent       " use indentation of previous line       
set smartindent      " use intelligent indentation for the language
set showmatch        " highlight matching braces

" -----------------------------------------------------------------------------
" FILE SEARCHING
" -----------------------------------------------------------------------------
set path+=**                      " search down into subfolders
set wildmenu                      " display all matching files when we tab complete
set ignorecase smartcase          " search queries intelligently set case
set hlsearch                      " highlight search results
set incsearch                     " show search results as you type

" -----------------------------------------------------------------------------
" WINDOW SPLIT
" -----------------------------------------------------------------------------
set splitbelow       " open new split window to bottom when using split
set splitright       " open new split window to right when using vsplit
" Disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" -----------------------------------------------------------------------------
" TABS
" -----------------------------------------------------------------------------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" -----------------------------------------------------------------------------
" LINES
" -----------------------------------------------------------------------------
set nowrap                            " disable lines wrapping
set listchars=extends:→               " show arrow if line continues rightwards
set listchars+=precedes:←             " show arrow if line continues leftwards
set scrolloff=5                       " leave 5 lines of buffer when scrolling
set sidescrolloff=10                  " leave 10 characters of horizontal buffer when scrolling

" -----------------------------------------------------------------------------
"  LINE NUMBERS
" ----------------------------------------------------------------------------
" Hybrid LineNumber
:set number relativenumber

" Change from Hybrid to Absolut Line Numbers when switching to Insert Mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" -----------------------------------------------------------------------------
" GLOBAL SHORTCUTS
" -----------------------------------------------------------------------------
" Ctrl [j-k-h-l] let you switch splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" Autoclose parenthesis and quotes
inoremap {<CR> {<CR>}<Esc>O
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
" -----------------------------------------------------------------------------
"  COMMANDS SHORTCUTS
" -----------------------------------------------------------------------------
:command SC SyntasticCheck
:command SR SyntasticReset
" -----------------------------------------------------------------------------
" SPELL-CHECK
" -----------------------------------------------------------------------------
map <F10> :setlocal spell spelllang=en_us<CR>
