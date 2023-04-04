set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set number
set showmatch
set autoindent
syntax on
set clipboard=unnamedplus
set noswapfile
set termguicolors
set rnu
set completeopt=menu,menuone,noselect

call plug#begin()

Plug 'dracula/vim', {'as':'dracula'}
Plug 'nvim-treesitter/nvim-treesitter',
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'rose-pine/neovim', { 'as': 'rose-pine' }
Plug 'feline-nvim/feline.nvim', { 'branch': '0.5-compat' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'romgrk/barbar.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'           " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional
Plug 'lewis6991/gitsigns.nvim'

" Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         " Required
Plug 'hrsh7th/cmp-nvim-lsp'     " Required
Plug 'hrsh7th/cmp-buffer'       " Optional
Plug 'hrsh7th/cmp-path'         " Optional
Plug 'saadparwaiz1/cmp_luasnip' " Optional
Plug 'hrsh7th/cmp-nvim-lua'     " Optional

"  Snippets
Plug 'L3MON4D3/LuaSnip'             " Required
Plug 'rafamadriz/friendly-snippets' " Optional

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}
Plug 'tpope/vim-fugitive'

Plug 'windwp/nvim-autopairs'
call plug#end()

lua << EOF
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
EOF

"colorscheme rose-pine 
colorscheme nightfox

