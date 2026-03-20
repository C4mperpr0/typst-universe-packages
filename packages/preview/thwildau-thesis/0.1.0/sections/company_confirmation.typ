#import "../utils/translation.typ": translation

#let make_company_confirmation() = {
  pagebreak(weak: true)

  // Confirmation by the internship company
  heading(level: 1, numbering: none, translation("Confirmation from the company"))
  [Das Praxisunternehmen bestätigt die im folgenden Bericht gemachten inhaltlichen Angaben.]

  v(3cm)
  line(length: 100%)

  [Datum, Unterschrift des Betreuers/Praxisunternehmens]
}
