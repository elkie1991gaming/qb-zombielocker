local Translations = {
    info = {
        stash = 'Coffre %{value}',
        stash_enter = '[~g~E~s~] Entrer dans le Casier',
    },
}

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
