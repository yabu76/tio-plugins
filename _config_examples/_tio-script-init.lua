--
-- tio's script-init file example
--
-- Please add following to your tio config file's [default] section.
--
-- script-init-file = /<<your-full-path>>/.tio-scipt-init.lua
--
-- note: tio module has been already loaded.
--

--
-- Start plugin system
--

local HOME = os.getenv("HOME")
local plugin_system_root = HOME .. "/.tio-plugins" -- ex. /home/user/.tio-plugins
dofile(plugin_system_root .. "/bootstrap/tio_plugin_set_load_path.lua")(plugin_system_root)

local tio_plugin_system = require("tio_plugin_system")
tio_plugin_system.start(plugin_system_root)

--
-- Set keymap
--
tio.set_keymap('@X=!local mod = require("tio_file_transfer"); mod.menu()')
tio.set_keymap('@S=!local mod = require("tio_shell"); mod.shell()')
tio.set_keymap('@1=!local mod = require("tio_toy"); mod.hanoi()')
tio.set_keymap('@2=!local mod = require("tio_toy"); mod.ball()')

--
-- Start
--
local mod = require("tio_toy"); mod.banner()
