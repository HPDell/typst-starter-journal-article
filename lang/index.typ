#let i18n = yaml("i18n.yaml")
#let l10n = yaml("l10n.yaml")

#let lookup(key, dict, lang) = {
  let lookup = dict.at(lang, default: i18n.en)
  let keys = key.split(".")
  for k in keys {
    if type(lookup) == dictionary and lookup.keys().contains(k) {
      lookup = lookup.at(k)
    } else {
      panic("Key not found: " + key)
    }
  }
  lookup
}

#let lang(lang) = {
  (
    gettext: (key) => lookup(key, i18n, lang),
    locale: (key) => lookup(key, l10n, lang),
  )
}
