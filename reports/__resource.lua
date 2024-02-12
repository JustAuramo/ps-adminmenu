--[[

  Made with love by Cheleber, you can join my RP Server here: www.grandtheftlusitan.com
  Works with essentialmode, es_admin and esx_identity!

--]]

description 'Reply and Report command'
version '1.0.0'
lua54        'yes'
client_script {
  'client.lua'
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server.lua'
}
shared_scripts {
	'@ox_lib/init.lua',
}