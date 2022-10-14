local Translations = {
    info = {
        stash = 'Baú %{value}',
        stash_enter = '[E] Abrir Cacifo',
    },
}

if GetConvar('qb_locale', 'en') == 'pt' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
