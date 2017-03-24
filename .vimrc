set tabstop=2
set shiftwidth=2
set softtabstop=0
set autoindent
set nocompatible
set expandtab

if has('vim_starting')
    set runtimepath+=$HOME/.vim/bundle/neobundle.vim
    call neobundle#begin(expand($HOME.'/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'https://github.com/Shougo/neobundle.vim.git'
    NeoBundle 'https://github.com/editorconfig/editorconfig-vim.git'
		" コメ化
    NeoBundle 'tyru/caw.vim.git'
		" NERDTreeでディレクトリ構造表示
		NeoBundle 'scrooloose/nerdtree'
    call neobundle#end()
endif
syntax on

" ctrl+kでコメ化
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)

filetype plugin indent on
" 新規プラグインインストールチェック
NeoBundleCheck
