fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Xotiic Development'
description 'QBCore BeanMachine Job using ox_lib'
version '0.1.0'

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

client_script {
	'client/*.lua'
}

server_script 'server/*.lua'
