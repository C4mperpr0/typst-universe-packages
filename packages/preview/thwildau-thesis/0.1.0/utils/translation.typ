#let translations_dict = json("translations.json")

#let translation(string, override_lang: none) = {
  context {
    let lang = if override_lang != none { override_lang } else { str(text.lang) }

    // check if entry exists, even if no translation is needed
    assert(string in translations_dict, message: "Entry \"" + string + "\" not found in translations file!")

    // if english, keep original
    if lang == "en" { return string }

    // use language specific translation
    assert(lang in translations_dict.at(string), message: "Entry \"" + string + "\" has no translation to \"" + lang + "\"!")
    return translations_dict.at(string).at(lang)
  }
}
