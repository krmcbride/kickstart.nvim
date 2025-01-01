return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {--[[ things you want to change go here]]
  },
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-`>]],
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == 'horizontal' then
          return 22
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
    }
  end,
}
