local Translations = {
    info = {
        stash = 'Saugykla %{value}',
        stash_enter = '[E] Atidaryti ginklinę',
    },
}

if GetConvar('qb_locale', 'en') == 'lt' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
