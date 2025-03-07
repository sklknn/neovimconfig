-- Welcome to my config :)
require("config.lazy")

require("vim-options")

local configs = require("nvim-treesitter.configs")

configs.setup({
    -- write there all needed language parsers or use TSInstall !!!
    ensure_installed = { "lua" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
})

vim.filetype.add({
    filename = {
        ["docker-compose.yml"] = "yaml.docker-compose",
        ["docker-compose.yaml"] = "yaml.docker-compose",
        ["compose.yml"] = "yaml.docker-compose",
        ["compose.yaml"] = "yaml.docker-compose",
    },
})

--Neotree on loading
--vim.cmd("Neotree toggle")
