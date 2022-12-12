local o = vim.o
local bo = vim.bo
local set = vim.opt

o.t_Co = "256" -- Support 256 colors

set.number = true
set.rnu = true
set.numberwidth = 2
set.clipboard = "unnamedplus" -- Copy to system clipboard
set.swapfile = false -- Disable swap file
set.backup = false -- Disable backup file
set.background = "dark" -- Dark background
set.showmatch = true -- Highlight matching brackets when text indicator is over them
set.showmode = false -- We don't need to see things like -- INSERT -- anymore
set.sw = 2
set.hlsearch = true -- Highlight search
set.linebreak = true -- Wrap long lines
set.incsearch = true -- Incremental search
set.termguicolors = true -- True color support
set.scrolloff = 8 -- Lines of context
set.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
set.ignorecase = true -- Ignore case
set.updatetime = 300 -- Faster completion
set.splitright = true -- Vertical splits will automatically be to the right

require "maps"
require "settings"
require "snippets"
require "lsp"
require "fluttertools"


vim.cmd([[colorscheme gruvbox-material]])
