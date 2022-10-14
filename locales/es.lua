local Translations = {
    info = {
        stash = 'Hueco %{value}',
        stash_enter = '[E] Entrar armario',
    },
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
