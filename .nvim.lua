local ray_term = nil

vim.cmd("cd " .. vim.fn.expand("<sfile>:p:h"))

vim.keymap.set("n", "<leader>r", function()
  if ray_term and vim.api.nvim_buf_is_valid(ray_term) then
    vim.api.nvim_buf_delete(ray_term, { force = true })
  end
  vim.cmd("botright vsplit | terminal nim js app.nim")
  ray_term = vim.api.nvim_get_current_buf()
  vim.cmd("vertical resize 50")
end)
