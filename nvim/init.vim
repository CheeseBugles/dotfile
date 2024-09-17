" 
" Authour: 0xNullbyte
"

let mapleader = "\<Space>"
source ~/.config/nvim/stuff/main.vim
set autoindent
set mouse=a
set number
set relativenumber
set shiftwidth=3
set smarttab
set softtabstop=3
set tabstop=3
set encoding=utf-8

set background=dark
set termguicolors
colorscheme alduin 

autocmd FileType vim setlocal formatoptions-=cro

vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv



" noremap <silent> <C-S-Left> :vertical resize +5<CR>
" noremap <silent> <C-S-Right> :vertical resize -5<CR>

noremap <silent> <C-S-Left> :vertical resize +1<CR>
noremap <silent> <C-S-Right> :vertical resize -1<CR>
noremap <silent> <C-S-Down> :resize +1<CR>
noremap <silent> <C-S-Up> :resize -1<CR>


" Function to check filetype and execute appropriate command
function! RunBuildOrScript()
    
	" Check if the current file type is C
    if &filetype ==# 'c'
        " Run the build.sh script
        execute '!./build.sh'

		  "Check if the current file type is Python
    elseif &filetype ==# 'python'
        " Run the Python script
        execute '!python3 %'
   
	  else
        " Display a message if the file type is not C or Python
        echo "File type not supported for F5 execution."
    endif
endfunction

" Map F5 to the function
nnoremap <F5> :call RunBuildOrScript()<CR>

