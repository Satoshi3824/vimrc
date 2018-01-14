colorscheme torte
"
"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent 
 
"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/vimbackup
 
"クリップボードをWindowsと連携する
set clipboard=unnamed
 
"vi互換をオフする
set nocompatible
 
"スワップファイル用のディレクトリを指定する
set directory=$HOME/vimbackup
 
"タブの代わりに空白文字を指定する
set expandtab
 
"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
 
"インクリメンタルサーチを行う
set incsearch
 
"行番号を表示する
set number
 
"閉括弧が入力された時、対応する括弧を強調する
set showmatch
 
"新しい行を作った時に高度な自動インデントを行う
set smarttab
 
" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
 
" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>



"----------
" カラースキーム
"----------
colorscheme torte

" 「日本語入力固定モード」の動作モード
let IM_CtrlMode = 4
" 「日本語入力固定モード」切替キー
inoremap <silent> <C-j> <C-^><C-r>=IMState('FixMode')<CR>

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- b) " " "
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
  
  " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'
  
" NERDTreeを設定                  
 NeoBundle 'scrooloose/nerdtree'   


" NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}

   " 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'jelera/vim-javascript-syntax' 
NeoBundle 'Vimjas/vim-python-pep8-indent'
NeoBundle 'scrooloose/nerdtree'    
NeoBundle 'indent-guides'
NeoBundle 'othree/html5.vim'


call neobundle#end()

     
     " Required:
     filetype plugin indent on
      
      " 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
      " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
      NeoBundleCheck
       
       "-------------------------
       " End Neobundle Settings.
       "-------------------------


"nerdTreeのキーセッティング"
nnoremap <silent><C-e> :NERDTreeToggle<CR>











python from powerline.vim import setup as powerline_setup  
python powerline_setup()  
python del powerline_setup
