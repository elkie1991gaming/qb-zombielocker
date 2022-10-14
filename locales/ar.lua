local Translations = {
    info = {
        stash = '%{value}',
        stash_enter = '[~g~E~s~] ﻞﺧﺩﺃ',
    },
}

if GetConvar('qb_locale', 'en') == 'ar' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
