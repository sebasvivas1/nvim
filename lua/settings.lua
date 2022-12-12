-- Gruvbox Theme
-- -- [hard, medium, soft]
-- -- [material, mix, original]
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_foreground = 'original'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_ui_contrast = "low"
vim.g.gruvbox_material_transparent_background = 2

-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

-- Vim JSX Pretty
vim.g.vim_jsx_pretty_colorful_config = 1

-- Vim-Go Plugin Config
vim.g.go_fmt_command = "goimports"
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'

-- NERDTree Config
vim.g.NERDTreeShowHidden = 0
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeAutoDeleteBuffer = 1
vim.g.NERDTreeShowLineNumbers = 1
vim.g.NERDTreeIgnore = {'node_modules', '.next', 'coverage'}
vim.g.NERDTreeWinSize = 35
vim.g.NERDTreeDirArrowExpandable = "→"
vim.g.NERDTreeDirArrowCollapsible = "↓"
 
-- NERDCommenter Config
vim.g.NERDSpaceDelims = 1  
vim.g.NERDTrimTrailingWhitespace = 1 
vim.g.NERDCompactSexyComs = 1

-- GitGutter Config
vim.g.gitgutter_sign_added = "∣" 
vim.g.gitgutter_sign_modified = "∣"
vim.g.gitgutter_sign_removed = "▶"
vim.g.gitgutter_sign_removed_first_line = "↟"
vim.g.gitgutter_sign_removed_above_and_below = "◆"
vim.g.gitgutter_sign_modified_removed = "∣"

-- Treesitter
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	sync_enable = false,
	ignore_install = { "help" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
		disable = { "" },
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	  },
	autotag = {
  enable = true,
},
}

-- Lualine
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
    symbols = {
      modified = ' ●',
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch','diff'},
    lualine_c = {{'filename', path = 1}},
    lualine_x = {},
    lualine_y = {'location'},
    lualine_z = {'progress'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- Tabline
require('tabline').setup({
    show_index = true,
    show_modify = true,
    modify_indicator = '●',
    no_name = 'No name',
})


-- LSP Installer
require("nvim-lsp-installer").setup {}

-- Prettier
local prettier = require("prettier")
prettier.setup({
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml"
  }
})
