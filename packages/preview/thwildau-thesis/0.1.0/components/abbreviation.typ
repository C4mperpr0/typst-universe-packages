#let abbr-state = state("abbreviations", (:))

#let define_abbreviation(abbreviation, description) = {
  // TODO: duplicates error handling
  let id = str("abbr-" + abbreviation)
  // Store full info in state
  context {
    abbr-state.update(abbr-state.get() + (str(id): (abbreviation, description)))
  }
  // Create link to later entry
  show link: set text(fill: black)
  link(label(id))[#emph[#abbreviation]]
}

#let abbreviation(abbreviation) = {
  // TODO: make this work with either symbol or name. Error handling
  let id = str("abbr-" + abbreviation)
  show link: set text(fill: black)

  link(label(id))[#emph[#abbreviation]]
}
