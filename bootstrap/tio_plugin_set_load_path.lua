-- SPDX-License-Identifier: GPL-2.0-or-later
-- Copyright (c) 2026 Hidefumi Yabu

return function(system_dir)
    local function append_load_path(dir)
        package.path = string.format("%s;%s/?.lua;%s/?/init.lua;%s/?.tio;%s/?/init.tio",
                                     package.path, dir, dir, dir, dir)
        package.cpath = string.format("%s;%s/?.so", package.cpath, dir)
    end
    local system_dir = string.gsub(system_dir, "/+$", "")
    append_load_path(system_dir .. "/core")
end
