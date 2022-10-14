local Translations = {
    info = {
        stash = 'Stash %{value}',
        stash_enter = '[E] Enter Locker',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
