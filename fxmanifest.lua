fx_version 'cerulean'
game 'gta5'

description 'qb-zombielocker'
author 'ElkieD#0001'

version '1.0.0'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_scripts {
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/client.lua'
}

lua54 'yes'