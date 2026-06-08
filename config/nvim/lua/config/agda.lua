vim.g.cornelis_split_location = "bottom"
vim.g.cornelis_max_size = 15
vim.g.cornelis_use_global_binary = 1

vim.api.nvim_create_augroup("agda_bindings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = "agda_bindings",
    pattern = { "agda", "*.markdown.agda" },
    callback = function()
        local bufopts = { buffer = true }
        vim.keymap.set("n", "<leader>l", "<cmd>CornelisLoad<CR>",            bufopts)
        vim.keymap.set("n", "<leader>r", "<cmd>CornelisRefine<CR>",          bufopts)
        vim.keymap.set("n", "<leader>d", "<cmd>CornelisMakeCase<CR>",        bufopts)
        vim.keymap.set("n", "<leader>,", "<cmd>CornelisTypeContext<CR>",     bufopts)
        vim.keymap.set("n", "<leader>.", "<cmd>CornelisTypeContextInfer<CR>",bufopts)
        vim.keymap.set("n", "<leader>n", "<cmd>CornelisSolve<CR>",           bufopts)
        vim.keymap.set("n", "<leader>a", "<cmd>CornelisAuto<CR>",            bufopts)
        vim.keymap.set("n", "gd",        "<cmd>CornelisGoToDefinition<CR>",  bufopts)
        vim.keymap.set("n", "[/",        "<cmd>CornelisPrevGoal<CR>",        bufopts)
        vim.keymap.set("n", "]/",        "<cmd>CornelisNextGoal<CR>",        bufopts)
        vim.keymap.set("n", "<C-A>",     "<cmd>CornelisInc<CR>",             bufopts)
        vim.keymap.set("n", "<C-X>",     "<cmd>CornelisDec<CR>",             bufopts)
    end,
})
