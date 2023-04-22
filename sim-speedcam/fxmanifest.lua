fx_version 'cerulean'
games {'gta5'}

author 'simstudios'
description 'Speed Camera'

client_scripts {
	'@es_extended/locale.lua',
	"Config.lua",
	"Client/*.lua"
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
    	'@es_extended/locale.lua',
	"Config.lua",
	"Server/*.lua"
}
