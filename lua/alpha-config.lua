local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

    [[  _   _            _   _ _            ]],
    [[ | \ | |          | | | (_)           ]],
    [[ |  \| | ___  ___ | | | |_ _ __ ___   ]],
    [[ | . ` |/ _ \/ _ \| | | | | '_ ` _ \  ]],
    [[ | |\  |  __/ (_) \ \_/ / | | | | | | ]],
    [[ \_| \_/\___|\___/ \___/|_|_| |_| |_| ]]
}

 dashboard.section.buttons.val = {
   dashboard.button("f", "Find file", ":Telescope find_files <CR>"),
   dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("t", "Find text", ":Telescope live_grep <CR>"),
   dashboard.button("c", "Configuration", ":e ~/.config/nvim/init.lua<CR>"),
   dashboard.button("q", "Quit Neovim", ":qa<CR>"),
}


dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
