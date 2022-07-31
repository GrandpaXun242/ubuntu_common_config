set nocompatible              " be iMproved, required
set tabstop=4
set shiftwidth=4
set softtabstop=4
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()            " required
filetype plugin indent on    " required
set nu
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
nnoremap <RIGHT> <C-W>>
nnoremap <LEFT> <C-W><
nnoremap <DOWN> <C-W>+
nnoremap <UP> <C-W>-
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_key_invoke_completion = ''
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_seed_identifiers_with_syntax=1
map <F2> :YcmCompleter GoTo<CR>                           # 按F2跳转到定义处
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
map <Leader>n :NERDTreeToggle<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>  "跳转到定义
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
let g:ycm_python_interpreter_path = '/home/zzx/miniconda3/envs/gan/bin/python'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
"autocmd
:autocmd FileType python nnoremap  <F5> :!python %<CR>
:autocmd FileType sh nnoremap  <F5> :!sh %<CR>