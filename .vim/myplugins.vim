" NOTE :
" NOTE :
"""""" ""install vim-plug before anything else """""""""""""""""""""
" NOTE :
" NOTE :
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Usage :
" PlugInstall
" PlugClean
" PlugUpdate
" PlugUpgrade

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Keep, Reject, Restore within quick fix window
Plug 'romainl/vim-qf'

"fzf fuzzy searching
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
" If you already installed fzf using Homebrew, the following should suffice:
set rtp+=~/.fzf
set rtp+=/Users/akarwande/homebrew/bin/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

Plug 'itchyny/lightline.vim'
function! LightLineFilename()
  return expand('%')
endfunction

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightLineFilename',
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste', 'spell' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ }

" Git support
" http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
Plug 'tpope/vim-fugitive'
nnoremap <leader>gs :Gstatus<CR>
" nnoremap <leader>gp :Gpush<CR>
" nnoremap <leader>gw :Gwrite<CR>
"FIXME  set statusline+= %{FugitiveStatusline()}

Plug 'airblade/vim-gitgutter'
" comment code : use gc
Plug 'tpope/vim-commentary'


" session management, auto file save
Plug 'thaerkh/vim-workspace'
"session workspace plugin
let g:workspace_session_directory = $HOME . '/.vim/sessions/'
"let g:workspace_undodir='~/.undodir'
let g:workspace_autosave_always = 1
let g:workspace_session_disable_on_args = 1
let g:workspace_autocreate = 1
" provides automatic closing of quotes, parenthesis, brackets, etc.,
Plug 'raimondi/delimitmate'


if has('nvim')
  "Enables :Gbrowse from fugitive.vim to open GitHub URLs.
  Plug 'tpope/vim-rhubarb'
  let g:github_enterprise_urls = ['https://github.com/NavigatingCancer/navigatingcare-components', 'https://github.com/NavigatingCancer/gc']

  
  "to change it to 'Hello world!'
  "Now press cs'<q> to change it to <q>Hello world!</q>
  " cs, ds
  Plug 'tpope/vim-surround'
  " ghetto HTML/XML mappings enhances surround
  Plug 'tpope/vim-ragtag'
  Plug 'tpope/vim-repeat'
  Plug 'adelarsq/vim-matchit'
  "am/im to select between matchit sections
  Plug 'machakann/vim-highlightedyank'

  " text objects
  "var / vir to select between def / end
  Plug 'adriaanzon/vim-textobj-matchit'
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-function'
  Plug 'haya14busa/vim-textobj-function-syntax'
  Plug 'vim-scripts/argtextobj.vim' " Function arguments as text objects: ia, aa
  " <count>ai	An Indentation level and line above.
  " <count>ii	Inner Indentation level (no line above).
  " <count>aI	An Indentation level and lines above/below.
  " <count>iI	Inner Indentation level (no lines above/below).
  Plug 'michaeljsmith/vim-indent-object'
  " TODO try these snippets out
  " Plug 'mlaursen/vim-react-snippets'
  " https://vimawesome.com/plugin/vim-react-snippets
  " Track the engine.
  " FIXME how to use this ??
  "   http://vimcasts.org/episodes/meet-ultisnips/
  "   http://vimcasts.org/episodes/ultisnips-visual-placeholder/
  " Plug 'SirVer/ultisnips'
  " NOTE : interferes with auto complete plugin with default settings
  " let g:UltiSnipsExpandTrigger = "<c-l>"        " Do not use <tab>
  " let g:UltiSnipsJumpForwardTrigger = "<c-b>"  " Do not use <c-j>
  " let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  " If you want :UltiSnipsEdit to split your window.
  " let g:UltiSnipsEditSplit="vertical"

  " Currently, es6 version of snippets is available in es6 branch only
  Plug 'honza/vim-snippets' "optional
  " ES2015 code snippets
  Plug 'epilande/vim-es2015-snippets'
  " TODO :
  " Plug 'mattn/emmet-vim'
  " let g:user_emmet_expandabbr_key = '<C-a>,'


  "use ripgrep inside vim
  ":Rg <string|pattern>
  ":RgRoot -- show root dir
  Plug 'jremmen/vim-ripgrep'

  Plug 'Yggdroot/indentLine'
  let g:indentLine_char = '⎸'

  Plug 'christoomey/vim-tmux-navigator'
  Plug 'easymotion/vim-easymotion'

  Plug 'aserebryakov/vim-todo-lists'

  "ruby
  Plug 'tpope/vim-endwise'

  " Plug 'skywind3000/asyncrun.vim'
  " autocmd BufWritePost *.js AsyncRun -post=checktime ~/node_modules/.bin/eslint --fix %
  " Initialize plugin system

  "json highlighter
  autocmd FileType json syntax match Comment +\/\/.\+$+

  " Syntax highlighter plugins
  " Plug 'sheerun/vim-polyglot'
  Plug 'kchmck/vim-coffee-script'
  " Plug 'pangloss/vim-javascript'
  " Plug 'jelera/vim-javascript-syntax'

  " format jsx code
  " Plug 'mxw/vim-jsx'

  Plug 'pangloss/vim-javascript'
  Plug 'jason0x43/vim-js-indent'
  " Plug 'bigfish/vim-js-context-coloring'
  " let g:js_context_colors_enabled=1
   " NOTE: assumes that you are using some other javascript plugin for syntax highlighting and it attaches itself onto
   " the JavaScriptAll cluster. So put this after vim-js-context-coloring
  Plug 'glanotte/vim-jasmine'

  " NOTE this causes issue with nvim-typescript
  " Plug 'MaxMEllon/vim-jsx-pretty'
  " default 0
  let g:vim_jsx_pretty_colorful_config = 1
  Plug 'leafgarland/typescript-vim'
  " NOTE depends on leafgarland/typescript-vim
  Plug 'peitalin/vim-jsx-typescript'
  " change syntax highlight colors based on here : https://vimawesome.com/plugin/vim-jsx-typescript
  " TODO : https://vimawesome.com/plugin/vim-babel
  " TODO : ctags auto update : https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html


  " Usage:
  "     :call CmdAlias('<lhs>', '<rhs>', [flags])
  "     or
  "     :Alias <lhs> <rhs> [flags]

  "     :UnAlias <lhs> ...
  "     :Aliases [<lhs> ...]

  " Ex:
  "     :Alias runtime Runtime
  "     :Alias find Find
  "     :Aliases
  "     :UnAlias find
  Plug 'konfekt/vim-alias'

  "allows * and # searches to occur on the current visual selection.
  Plug 'nelstrom/vim-visual-star-search'

  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  let NERDTreeHijackNetrw = 0
  noremap <silent> <leader>n :NERDTreeToggle<CR> <C-w>=
  noremap <silent> <leader>N :NERDTreeFind<CR> <C-w>=
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  let g:NERDTreeUpdateOnCursorHold = 0
  let g:NERDTreeUpdateOnWrite      = 0

  Plug 'janko-m/vim-test'
  let test#javascript#jest#executable = 'CI=true yarn test --colors'
  nnoremap <silent> <leader>tt :TestNearest<CR>
  nnoremap <silent> <leader>tf :TestFile<CR>
  nnoremap <silent> <leader>ts :TestSuite<CR>
  nnoremap <silent> <leader>tl :TestLast<CR>
  if has("nvim")
    let test#strategy = "neovim"
  else
    let test#strategy = "vimterminal"
  endif

  " brew install uptech/oss/alt
  " Run a given vim command on the results of alt from a given path.
  " See usage below.
  function! AltCommand(path, vim_command)
    let l:alternate = system("alt " . a:path)
    if empty(l:alternate)
      echo "No alternate file for " . a:path . " exists!"
    else
      exec a:vim_command . " " . l:alternate
    endif
  endfunction

  " Find the alternate file for the current path and open it
  nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>)

  " automatically adjusts shiftwidth and expandtab intelligently based on the existing indentation
  Plug 'tpope/vim-sleuth'
  " FIXME not working
  " Plug 'szw/vim-g'

  Plug 'JamshedVesuna/vim-markdown-preview'
endif

call plug#end()
" NOTE: Reload .vimrc and :PlugInstall to install plugins.
