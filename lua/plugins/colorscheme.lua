--  -- General nvim config
vim.opt.background = "dark"
vim.o.termguicolors = true -- is this even necessary?
vim.wo.cursorline = true

-- -- Rose pine
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			variant = "moon", -- auto, main, moon, or dawn
-- 			dark_variant = "moon", -- main, moon, or dawn
-- 			dim_inactive_windows = false,
-- 			extend_background_behind_borders = true,
-- 			enable = {
-- 				terminal = true,
-- 				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
-- 				migrations = true, -- Handle deprecated options automatically
-- 			},
-- 			styles = {
-- 				bold = true,
-- 				italic = true,
-- 				transparency = true,
-- 			},
-- 			groups = {
-- 				border = "muted",
-- 				link = "iris",
-- 				panel = "surface",
-- 				error = "love",
-- 				hint = "iris",
-- 				info = "foam",
-- 				note = "pine",
-- 				todo = "rose",
-- 				warn = "gold",
-- 				git_add = "foam",
-- 				git_change = "rose",
-- 				git_delete = "love",
-- 				git_dirty = "rose",
-- 				git_ignore = "muted",
-- 				git_merge = "iris",
-- 				git_rename = "pine",
-- 				git_stage = "iris",
-- 				git_text = "rose",
-- 				git_untracked = "subtle",
-- 				h1 = "iris",
-- 				h2 = "foam",
-- 				h3 = "rose",
-- 				h4 = "gold",
-- 				h5 = "pine",
-- 				h6 = "foam",
-- 			},
-- 			highlight_groups = {
-- 				-- Comment = { fg = "foam" },
-- 				-- VertSplit = { fg = "muted", bg = "muted" },
-- 			},
-- 			before_highlight = function(group, highlight, palette)
-- 				-- Disable all undercurls
-- 				-- if highlight.undercurl then
-- 				--     highlight.undercurl = false
-- 				-- end
-- 				--
-- 				-- Change palette colour
-- 				-- if highlight.fg == palette.pine then
-- 				--     highlight.fg = palette.foam
-- 				-- end
-- 			end,
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }

-- Catppuccin
return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
     opts = {
    integrations = {
      alpha = true,
      cmp = true,
      gitsigns = true,
      illuminate = {
                enabled = true,
                lsp = false,
            },
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      neogit = true,
      mason = true,
        flash= true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      -- navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
    },
  },
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            -- transparent_background = "false",
    --         custom_highlights = function(colors)
    --     return {
    --         -- Comment = { fg = colors.flamingo },
    --         TabLineSel = { bg = colors.pink },
    --         CmpBorder = { fg = colors.surface2 },
    --         Pmenu = { bg = colors.none },
    --     }
    -- end
        })
        vim.cmd.colorscheme "catppuccin-mocha"
        -- vim.cmd.colorscheme "catppuccin-latte"
        -- vim.cmd.colorscheme "catppuccin-macchiato"
        -- vim.cmd.colorscheme "catppuccin-frappe"
    end
}

-- -- Oxycarbon
-- return {
--   "nyoom-engineering/oxocarbon.nvim",
--     config = function()
--         -- vim.opt.background = "dark" -- set this to dark or light
--         vim.cmd.colorscheme "oxocarbon"
--     end,
-- }

-- -- Tokyonight configuration
-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 9000,
--     -- opts = {
--     --     style="moon",
--     --     transparent=false,
--     -- },
--     config = function()
--         require("tokyonight").setup{
--             transparent = true,
--             style = "moon",
--             styles = {
--                 -- sidebars = "transparent",
--                 -- floats = "transparent",
--             },
--         }
--         -- vim.cmd[[colorscheme tokyonight-moon]]
--         vim.cmd[[colorscheme tokyonight-moon]]
--     end
-- }

-- -- Onedark
-- return {
--     "joshdick/onedark.vim",
--     config = function ()
--         vim.cmd[[colorscheme onedark]]
--     end
-- }

-- -- Kanagawa
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		-- local wave_colors = require("kanagawa.colors").setup({ theme = 'wave' })
-- 		-- local wave_palette = wave_colors.palette
-- 		-- local wave_theme = wave_colors.theme
-- 		require("kanagawa").setup({
-- 			compile = false, -- enable compiling the colorscheme
-- 			undercurl = true, -- enable undercurls
-- 			commentStyle = { italic = true },
-- 			functionStyle = {},
-- 			keywordStyle = { italic = true },
-- 			statementStyle = { bold = true },
-- 			typeStyle = {},
-- 			transparent = true, -- do not set background color
-- 			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
-- 			terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- 			colors = { -- add/modify theme and palette colors
-- 				palette = {},
-- 				theme = {
-- 					-- wave = {
-- 					-- 	ui = {
-- 					-- 		-- bg_visual  = palette_colors.waveBlue2,
-- 					-- 		-- bg_visual = "#625e5a",  -- brow-nish
-- 					-- 		bg_visual = "#0d0c0c", -- black
-- 					-- 	},
-- 					-- },
-- 					lotus = {},
-- 					dragon = {
-- 						ui = {
-- 							-- bg_visual  = palette_colors.waveBlue2,
-- 							-- bg_visual = "#625e5a",  -- brow-nish
-- 							-- bg_visual = "#0d0c0c", -- black
-- 						},
-- 					},
-- 					all = {},
-- 				},
-- 			},
-- 			overrides = function(colors) -- add/modify highlights
-- 				-- local theme = colors.theme
-- 				-- local palette = colors.palette
-- 				return {}
-- 				-- return {
-- 				-- 	Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
-- 				-- 	PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
-- 				-- 	PmenuSbar = { bg = theme.ui.bg_m1 },
-- 				-- 	PmenuThumb = { bg = theme.ui.bg_p2 },
-- 				-- }
-- 			end,
-- 			theme = "wave",  -- Load "wave" theme when 'background' option is not set
-- 			-- theme = "lotus",
-- 			background = { -- map the value of 'background' option to a theme
-- 				dark = "dragon", -- try "dragon" !
-- 				-- dark = "wave", -- try "dragon" !
-- 				light = "lotus",
-- 				-- dark = "lotus",
-- 			},
-- 		})
-- 		vim.cmd("colorscheme kanagawa")
-- 		-- Invert colors when selecting text
-- 		-- vim.cmd[[ highlight Visual guibg=NONE guifg=NONE gui=reverse ]]
-- 	end,
-- }

-- -- -- Solarized osaka
-- return {
--   "craftzdog/solarized-osaka.nvim",
--   lazy = false,
--   priority = 8000,
--     config = function()
--         require("solarized-osaka").setup({
--             transparent = true,
--         })
--         vim.cmd[[colorscheme solarized-osaka]]
--     end,
-- }

-- -- Gruvbox
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({
--             transparent_mode=false,
-- 		})
--         vim.cmd[[colorscheme gruvbox]]
-- 	end,
-- }

-- -- Gruvbox material (doesnt work, cant require, dunno why, call needs to change)
-- return {
-- 	"sainnhe/gruvbox-material",
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox-material").setup({
--             -- transparent_mode=false,
-- 		})
--         vim.cmd[[colorscheme gruvbox-material]]
-- 	end,
-- }
--

-- -- Nightly (dont use this one, a lot of indent balnkline lines, unusable)
-- return {
-- 	"Alexis12119/nightly.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("nightly").setup({
-- 			transparent = true,
-- 			styles = {
-- 				comments = { italic = true },
-- 				functions = { italic = false },
-- 				variables = { italic = false },
-- 				keywords = { italic = false },
-- 			},
-- 			highlights = {},
-- 		})
-- 		vim.cmd([[colorscheme nightly]])
-- 	end,
-- }

-- -- Material
-- -- vim.g.material_style = "deep ocean"
-- -- vim.g.material_style = "darker"
-- -- vim.g.material_style = "palenight"
-- vim.g.material_style = "oceanic"
-- return {
-- 	"marko-cerovac/material.nvim",
-- 	config = function()
-- 		require("material").setup({
-- 			contrast = {
-- 				terminal = false, -- Enable contrast for the built-in terminal
-- 				sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
-- 				floating_windows = false, -- Enable contrast for floating windows
-- 				cursor_line = false, -- Enable darker background for the cursor line
-- 				non_current_windows = false, -- Enable contrasted background for non-current windows
-- 				filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
-- 			},
-- 			disable = {
-- 				background = true,
-- 			},
-- 		})
-- 		-- vim.cmd.colorscheme "material"
-- 		vim.cmd.colorscheme("material")
-- 	end,
-- }

-- -- Nightfox
-- return {
-- 	"EdenEast/nightfox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("nightfox").setup({
-- 			options = {
-- 				transparent = true,
-- 				styles = {
-- 					comments = "italic",
-- 					keywords = "bold",
-- 					-- types = "italic,bold",
-- 				},
-- 			},
-- 		})
-- 		vim.cmd("colorscheme nightfox")
-- 		-- vim.cmd("colorscheme carbonfox")
-- 		-- vim.cmd("colorscheme duskfox")
-- 		-- vim.cmd("colorscheme terafox")
-- 		-- vim.cmd("colorscheme nordfox")
-- 	end,
-- }
-- --

-- -- Everforest
-- return {
--     "sainnhe/everforest",
--     priority=1000,
--     -- config=true,
--     config = function ()
--         -- require("everforest").setup{}
--         vim.cmd ("let g:everforest_background = 'hard'")
--         -- vim.cmd ("let g:everforest_background = 'soft'")
--         -- vim.cmd ("let g:everforest_transparent_background = 1")
--         -- vim.cmd ("let g:everforest_background = 'medium'")
--         -- vim.cmd ("let g:everforest_background = 'soft'")
-- 		vim.cmd("colorscheme everforest")
--     end
-- }
