-- Welcome to my config :)
require("config.lazy")

require("vim-options")


local configs = require("nvim-treesitter.configs")

configs.setup({
    -- write there all needed language parsers or use TSInstall !!!
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
})


