-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
----  Please Delete all options below that does not apply to your script ----
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

fx_version 'cerulean' -- Defines the supported functionality for the resource. This has to be one of a specific set of words. Each entry inherits properties from the previous one. The current FXv2 resource version is cerulean.
game 'gta5' -- Defines the supported game API sets for the resource. (Can either be "Common" which won't allow access to APIs, "gta4", "gta5" or "rdr3")
lua54 'yes' -- Enables Lua Version 5.4
author '' -- Put Auther Name Here
description '' -- Put a Description of the Script here
version '1.0.0' -- Put the Script Version Here

ui_page 'html/index.html' -- Define where to look for the UI to Show
file 'html/index.html' -- Make sure the script can find and load the UI file

this_is_a_map 'yes' -- Tells FiveM that this is a map script

server_only 'yes' -- Tells FiveM that this is a server only script

loadscreen 'html/loadscreen.html' -- Defines where to look for the Loading screen NUI
file 'html/loadscreen.html' -- Defines where to look for the Loading screen NUI
loadscreen_manual_shutdown 'yes' -- Tells FiveM to shutdown the NUI only after everything has loaded (Also stops the Bridge screen from showing when loading into servers)

provide 'mysql-async' -- Marks the current resource as a replacement for the specified resource. This means it'll start instead of the specified resource, if another resource requires it, and will act as if it is said resource if started.

use_experimental_fxv2_oal "yes" -- This will enable the usage of OAL (One Argument List) for Lua. This aims to correct return-types of natives and provide better performance via faster native calls.

shared_scripts { -- Define shared files need to be listed here otherwise they will not work. Alternativly you can do the below and it will allow all LUA files in the folder "shared" to be accessable to the script.
    "shared/*.lua",
    'locales/*.lua'
}

client_scripts { -- Define client files need to be listed here otherwise they will not work. Alternativly you can do the below and it will allow all LUA files in the folder "client" to be accessable to the script.
    "client/*.lua",
}

server_scripts { -- Define server files need to be listed here otherwise they will not work. Alternativly you can do the below and it will allow all LUA files in the folder "server" to be accessable to the script.
    "server/*.lua"
}

exports { -- Define all GLOBAL functions within the script you would like other scripts to be able to access using "exports[script_name]:testFunction"
    "testFunction"
}

files { -- Define Additional files to help with loading vehicles
    'audio/mywaves/stupidcar.awc',
    'myvehicles.meta',
    'metas/*_handling.meta',
}

data_file 'AUDIO_WAVEPACK' 'audio/mywaves'
data_file 'VEHICLE_METADATA_FILE' 'myvehicles.meta'
data_file 'HANDLING_FILE' 'metas/*_handling.meta'

dependency 'myresource-base' -- Tells FiveM that there is a dependancy required in order for this script to work properly

dependencies { -- Tells FiveM that there is a dependancies required in order for this script to work properly
    'myresource-base',
    'utility-resource'
}

dependencies { -- You can also use dependencies to set minimum server requirements in order to use the script as well
    '/server:4500',                -- requires at least server build 4500
    '/policy:subdir_file_mapping', -- requires the server key to have 'subdir_file_mapping' granted
    '/onesync',                    -- requires state awareness to be enabled
    '/gameBuild:h4',               -- requires at least game build 2189
    '/native:0xE27C97A0',          -- requires native 0xE27C97A0 to be supported
}