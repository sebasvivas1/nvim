" HTML & JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" python
let g:python3_host_prog = '/usr/bin/python3.8'

" Lightline Config
let g:lightline = {
  \ 'colorscheme': 'gruvbox_material',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'branch' ], ['isReadondly', 'filename', 'modified' ] ],
  \   'right': [ [ 'lineinfo' ],[ 'filetype' ],
  \              [ 'fileencoding' ] ]
  \ },
  \ 'inactive': {
  \   'left': [ [ 'inactive' ] ],
  \   'right': [ [ 'bufnum' ] ]
  \ },
  \ 'component_function': {
  \   'branch': 'Fugitive',
  \   'isReadondly': 'IsReadonly',
  \ },
  \ 'component': {
  \   'bufnum': '%n',
  \   'inactive': 'inactive'
  \ },
  \ }

function! Fugitive()
  if exists('*FugitiveHead')
    let branch = FugitiveHead()
    return branch !=# '' ? " ".branch : ''
  endif
  return ''
endfunction

function! IsReadonly()
  return &readonly ? "" : ''
endfunction

" Go Plugin Config
let g:go_fmt_command = "goimports"
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" NERDTree Config
let NERDTreeShowHidden = 0
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['node_modules']
let g:NERDTreeDirArrowExpandable = ""
let g:NERDTreeDirArrowCollapsible = ""

function! NERDTreeToggleInCurDir()
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    exe ":NERDTreeFind"
  endif
endfunction

:noremap <C-n> :call NERDTreeToggleInCurDir()<cr>

" NERDCommenter Config
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario
let g:NERDCompactSexyComs = 1

" Vue Plugin Config
let g:vue_pre_processors = ['sass', 'scss', 'javascript']

" Gruvbox-Material Config
let g:gruvbox_material_palette = "original"
let g:gruvbox_material_background = 'medium'

" SuperTab Config
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

" Prettier Config
let g:prettier#config#print_width = '80'
let g:prettier#config#tab_width = '2'
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#require_pragma = 'false'
let g:prettier#quickfix_enabled = 0
let g:prettier#vue_indent_script_and_style = 'true'

let g:gitgutter_sign_added = "|" 
let g:gitgutter_sign_modified = "|"
let g:gitgutter_sign_removed = ""
let g:gitgutter_sign_removed_first_line = ""
let g:gitgutter_sign_removed_above_and_below = ""
let g:gitgutter_sign_modified_removed = "|"

" CTRLP Config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Coc Defautl Config
let g:diagnostic = { 'errorSign': 'x' }
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> U :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
