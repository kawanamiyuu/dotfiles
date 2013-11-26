"---------------------------------------------------------------------
"color
"---------------------------------------------------------------------
syntax on

highlight Comment ctermfg=darkred
highlight Constant ctermfg=darkgreen
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=5
highlight PmenuSbar ctermbg=2
highlight PmenuThumb ctermfg=3
highlight Search ctermbg=cyan
highlight LineNr ctermfg=grey

"---------------------------------------------------------------------
"highlight cursorline
"---------------------------------------------------------------------
"set cursorline
"hi CursorLine term=none cterm=none ctermbg=17 guibg=236

"---------------------------------------------------------------------
"display
"---------------------------------------------------------------------
set title  "タイトルをウインドウ枠に表示する
set number "行番号を表示する
set wrap   "行が長い場合、ウィンドウの右端で折り返して標示する

"---------------------------------------------------------------------
"backspace
"---------------------------------------------------------------------
set backspace=indent,eol,start

"---------------------------------------------------------------------
"backup
"---------------------------------------------------------------------
set nobackup "バックアップを作成しない

"---------------------------------------------------------------------
"search
"---------------------------------------------------------------------
set history=99 "コマンド、検索パターンをXX個まで履歴に残す
set incsearch  "インクリメンタルサーチする
set ignorecase "検索の時に大文字小文字を区別しない
set smartcase  "検索の時に大文字が含まれている場合は区別して検索する
set wrapscan   "最後まで検索したら先頭に戻る
set hlsearch   "検索結果文字列のハイライトを有効にする

"Ctrl-/ で検索ハイライトを消す
nmap <C-l> <C-l>:nohlsearch<CR>

"---------------------------------------------------------------------
"tab / indent
"---------------------------------------------------------------------
set smartindent   "改行時に自動インデントする
set expandtab     "TAB文字の代わりにSPACEを挿入する
set tabstop=2     "TAB文字の表示幅
set softtabstop=2 "タブキー押下時に挿入されるSPACEの数 (0の場合「tabstop」の値)
set shiftwidth=2  "自動インデントに使われるSPACEの数
set list listchars=tab:>\ ,extends:<,trail:. "TAB,SPACE等を可視化する

"---------------------------------------------------------------------
"status bar
"---------------------------------------------------------------------
set showcmd
set laststatus=2
highlight StatusLine term=NONE cterm=NONE ctermfg=black ctermbg=white
set statusline=%y%F%2(\ %m%r\ %)[%4v][%12(\ %5l/%5L%)]

"---------------------------------------------------------------------
"match brackets
"---------------------------------------------------------------------
set showmatch   "対応する括弧を表示する
set matchtime=5 "対応する括弧を表示する時間(秒)
let loaded_matchparen = 1 "対応する括弧をハイライトしない

"---------------------------------------------------------------------
"オムニ補完の設定
"(insertモードでCtrl+oで候補を出す、Ctrl+n Ctrl+pで選択、Ctrl+yで確定)
"---------------------------------------------------------------------
set omnifunc=pythoncomplete#Complete
set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=xmlcomplete#CompleteTags
set omnifunc=phpcomplete#CompletePHP

"---------------------------------------------------------------------
"auto completetion
"---------------------------------------------------------------------
"using the Dictionary"
set complete=.,w,b,u,t,i,k
"using the TAB key"
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<TAB>"
  else
    if pumvisible()
      return "\<C-N>"
    else
      return "\<C-N>\<C-P>"
    end
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"---------------------------------------------------------------------
"dictionary
"---------------------------------------------------------------------
"autocmd FileType php :set dictionary+=~/.vim/dict/php

"---------------------------------------------------------------------
"like Emacs
"---------------------------------------------------------------------
" コマンド入力中断
imap <silent> <C-g> <ESC><ESC><ESC><CR>i

" 画面分割
imap <silent> <C-x>1 <ESC>:only<CR>i
imap <silent> <C-x>2 <ESC>:sp<CR>i
imap <silent> <C-x>3 <ESC>:vsp<CR>i
imap <silent> <C-x>o <ESC><C-w>w<CR>i
imap <silent> <C-x>p <ESC><C-w>p<CR>i

" 消去、編集
imap <C-k> <Right><ESC>d$a
imap <C-y> <ESC>pi
imap <C-d> <ESC>xi

" 移動
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>
"imap <ESC>< <ESC>ggi
"imap <ESC>> <ESC>Gi

" ファイル
"imap <C-c><C-c>  <ESC>:qa<CR>
"imap <C-x><C-c>  <ESC>:qa!<CR>
"imap <C-s><C-s>  <ESC>:w<CR>i
"imap <C-x><C-s>  <ESC>:w!<CR>i
"imap <C-x><C-f>  <ESC>:e

" エラーリカバリ
" imap <C-/> <ESC>ui

" その他
"map  <C-x><C-e>  :Explore<CR>

