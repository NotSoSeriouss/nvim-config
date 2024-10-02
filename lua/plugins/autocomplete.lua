return {
  'Exafunction/codeium.vim',
  lazy = true,
  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<Tab>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
  end
}
