require("barbar").setup{
    icons = {
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true},
            [vim.diagnostic.severity.WARN] = {enabled = false},
            [vim.diagnostic.severity.INFO] = {enabled = false},
            [vim.diagnostic.severity.HINT] = {enabled = true},
        },
        gitsigns = {
            added = {enabled = true, icon = '+'},
            changed = {enabled = true, icon = '~'},
            deleted = {enabled = true, icon = '-'},
        },
        pinned = {button = "", filename = true}
    },
    sidebar_filetypes = {
        NvimTree = true
    }
}

--vim.api.nvim_create_autocmd('FileType', {
--  callback = function(tbl)
--    local set_offset = require('bufferline.api').set_offset
--
--    local bufwinid
--    local last_width
--    local autocmd = vim.api.nvim_create_autocmd('WinScrolled', {
--      callback = function()
--        bufwinid = bufwinid or vim.fn.bufwinid(tbl.buf)
--
--        local width = vim.api.nvim_win_get_width(bufwinid)
--        if width ~= last_width then
--          set_offset(width, 'NvimTree_1')
--          last_width = width
--        end
--      end,
--    })
--
--    vim.api.nvim_create_autocmd('BufWipeout', {
--      buffer = tbl.buf,
--      callback = function()
--        vim.api.nvim_del_autocmd(autocmd)
--        set_offset(0)
--      end,
--      once = true,
--    })
--  end,
--  pattern = 'NvimTree', -- or any other filetree's `ft`
--})



--keymap
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
