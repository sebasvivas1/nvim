" ------ VimScript Settings ------

" OpenExplorer Function (NerdTree)
function! OpenExplorer()
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
    echo "Explorer Closed"
  else
    exe ":NERDTreeFind"
    exe ":NERDTreeRefreshRoot"
    echo "Explorer Open"
  endif
endfunction

" Fuzzy Finder Functions
function! OpenSearch() 
  exe ":GFiles"
  echo "Open File Browser"
endfunction

function! OpenSuperSearch() 
  exe ":Ag"
  echo "Open Super Search"
endfunction

function! GitStatus()
  exe ":GFiles?"
  echo "Git Status Command"
endfunction

" Copy All File Content Function
function! Copy() 
  exe ":!xclip -selection clipboard < %"
  echo "Copy File"
endfunction

" OpenExplorer (NerdTreee) Map
:noremap <Leader>n :call OpenExplorer()<cr>

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
