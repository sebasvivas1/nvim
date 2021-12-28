" Config File

" Python
let g:python3_host_prog = '/usr/bin/python3.8'

" Lightline Config
let g:lightline = {
\ 'colorscheme': 'gruvbox_material',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'branch' ], ['isReadondly', 'filename', 'modified' ] ],
\   'right': [ [ 'lineinfo' ],
\              [ 'filetype' ] ]
\ },
\ 'tab': {
\   'active': [ 'filename', 'modified' ],
\ },
\ 'component_function': {
\   'branch': 'Fugitive',
\   'isReadondly': 'IsReadonly',
\ },
\ 'component': {
\   'bufnum': '%n',
\   'inactive': 'inactive',
\   'relpath': '%f'
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

" Vim-Vue
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_typescript = 1

" Vim-Go Plugin Config
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
let NERDTreeIgnore = ['node_modules', '.next', 'coverage']
let g:NERDTreeDirArrowExpandable = ""
let g:NERDTreeDirArrowCollapsible = ""
 
" NERDCommenter Config
let g:NERDSpaceDelims = 1  " Agregar un espacio después del delimitador del comentario
let g:NERDTrimTrailingWhitespace = 1  " Quitar espacios al quitar comentario
let g:NERDCompactSexyComs = 1

" Vue Plugin Config
let g:vue_pre_processors = ['sass', 'scss', 'javascript']

" Gruvbox-Material Config
let g:gruvbox_material_palette = "original"
let g:gruvbox_material_background = 'hard'

" Prettier Config
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"

let g:prettier#quickfix_enabled = 0
let g:prettier#config#config_precedence = 'pref-file'

" GitGutter Config
let g:gitgutter_sign_added = "|" 
let g:gitgutter_sign_modified = "|"
let g:gitgutter_sign_removed = ""
let g:gitgutter_sign_removed_first_line = ""
let g:gitgutter_sign_removed_above_and_below = ""
let g:gitgutter_sign_modified_removed = "|"

" CTRLP Config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|coverage\'

" Coc Defautl Config
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-tag',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-prettier',
  \ ]
