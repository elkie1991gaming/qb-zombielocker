local Translations = {
    info ={
        stash = 'Stash %{value}',
        stash_enter = '~b~[~r~E~b~]~w~ Stash öffnen',
    },
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
