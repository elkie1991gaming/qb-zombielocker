local Translations = {
    info = {
        stash = 'Fiset %{value}',
        stash_enter = '[E] Vestiar',
    },
}

if GetConvar('qb_locale', 'en') == 'ro' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
