" なんだっけこれ
" if has('vim_starting')
"     set runtimepath+=~/.vim/bundle/neobundle.vim
"     call neobundle#rc(expand('~/.vim/bundle'))
" endif
"
" NeoBundle 'https://github.com/Shougo/neobundle.vim.git'
" NeoBundle 'https://github.com/editorconfig/editorconfig-vim.git'
"set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set autoindent
set nocompatible
set expandtab
retab

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle/'))
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
