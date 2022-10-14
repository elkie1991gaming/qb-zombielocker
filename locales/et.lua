local Translations = {
    info = {
        stash = 'Ladu %{value}',
        stash_enter = '[E] - Ava kapp',
    },
}

if GetConvar('qb_locale', 'en') == 'et' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
