local Translations = {
    info = {
        stash = 'Úložisko %{value}',
        stash_enter = '[~g~E~s~] Otvoriť úložisko',
    },
}

if GetConvar('qb_locale', 'en') == 'sk' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
