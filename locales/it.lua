local Translations = {
    info = {
        stash = 'Magazzino %{value}',
        stash_enter = '[~g~E~s~] Entra Armadietto',
    },
}

if GetConvar('qb_locale', 'en') == 'it' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
