-- Enable system clipboard integration
vim.opt.clipboard = "unnamedplus"

-- Additional useful settings for viewing files
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.wrap = false          -- Don't wrap lines
vim.opt.scrolloff = 8         -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff = 8     -- Keep 8 columns left/right of cursor

-- Show message when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
        print(string.format("Yanked %d lines", vim.v.event.regcontents and #vim.v.event.regcontents or 0))
    end
})