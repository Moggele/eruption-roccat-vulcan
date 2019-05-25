-- This file is part of Eruption.

-- Eruption is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- Eruption is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with Eruption.  If not, see <http://www.gnu.org/licenses/>.

-- global script configuration --
config["script_name"] = "simple"
config["script_description"] = "A very simple effects script"
config["script_version"] = "0.0.1"
config["script_author"] = "The Eruption development team"
config["min_supported_version"] = "0.0.1"

-- global array that stores each key's current color
color_map = {}

function on_startup()
    -- turn off all key LEDs
    for i = 0, get_num_keys() do
        color_map[i] = rgb_to_color(0, 0, 0)
    end

    -- update keyboard LED state
    set_color_map(color_map)
end

function on_key_down(key_index)
    info("Pressed key: " .. key_index)

    -- set color of pressed key to red
    color_map[key_index] = rgb_to_color(255, 0, 0)
    set_color_map(color_map)
end