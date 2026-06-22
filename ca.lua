fx_version 'bodacious'
game 'gta5'
Autor 'buty'
lua54 'yes'
version '1.0.2'

server_script {
  '@oxmysql/lib/MySQL.lua',
  'editable/**/*.lua',
  'server/*.lua'
}

client_scripts {
  'editable/**/*.lua',
  'client/function.lua',
  'client/target_bridge.lua',
  'client/world.lua',
  'client/client_main.lua',
  'client/job.lua'
}

ui_page 'html/index.html'

files {
  'html/**/*.*'
}

shared_script {
  '@ox_lib/init.lua',
  'locales/*.lua',
  'config.lua'
}

escrow_ignore {
  'config.lua',
  'editable/**/*.lua',
  'locales/*.lua',
  'client/function.lua',
  'client/target_bridge.lua'
}
  




dependency '/assetpacks'