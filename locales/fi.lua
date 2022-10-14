local Translations = {
    info = {
        stash = 'Kätkeä %{value}',
        stash_enter = '[E] Pukuhuone',
    },
}

if GetConvar('qb_locale', 'en') == 'fi' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
