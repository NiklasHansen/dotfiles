local function init()
  require('lualine').setup {
    options = {
      extensions = { 'fzf', 'quickfix' },
      theme = 'nord'
    }
  }
end

return {
  init = init
}
