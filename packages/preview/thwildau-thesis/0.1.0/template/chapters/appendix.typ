= Full `main.typ`

#figure(caption: [Full main.typ])[
  ```typst
#import "@preview/thwildau-thesis:0.1.0": (
  abbreviation, conf, define_abbreviation, define_unit, infocard, tables, th-color, todo, unit,
) // TH-Wildau template

// template configuration
#show: conf.with(
  title: "TH-Wildau Typst Template",
  titlepage: "internship",
  student: (
    name: "Clara Fall",
    matrnr: "12345678",
    subject: "Praxisintegrierender Bachelor Studiengang Telematik",
    seminar_group: "T23",
    semester: "4",
  ),
  supervisor: (
    name: "Frau Dr. Lieschen Müller",
    mail: "mueller@beispielag.de",
  ),
  internship: (
    type: "3. Betriebspraktikum",
    partner: [Beispiel AG \ Straßenweg 1 \ 12345 Musterstadt \ #link("https://beispielag.de")],
    period: "16.06.2025 bis 25.07.2025",
  ),
  bibliography: bibliography("bib.yaml", style: "institute-of-electrical-and-electronics-engineers"),
  language: "de",
  misc_pages: (
    bibliographic_description: (
      de: (
        title_long: "TH-Wildau Typst Tempalte für Thesis und Praktikumsbericht",
        metadata: " ",
        keywords: "Typst, Thesis, Template, TH-Wildau",
        goal: [Erstellung eines neue Typst Projektes mit dem TH-Wildau Template.],
        abstract: [In dieser Arbeit wird erklärt, wie das darin verwendete Typst-Template konfiguriert und angewendet werden kann.],
      ),
      en: (
        title_long: "TH-Wildau Typst template for thesis and intership.",
        metadata: " ",
        keywords: "Typst, Thesis, Template, TH-Wildau",
        goal: [Creation of a new typst project with the TH-Wildau template.],
        abstract: [This thesis aims to explain the process of installing, configuring and applying the TH-Wildau typst template.],
      ),
    ),
    reading_guides: todo()[Beispiele für Konfiguration aktualisieren],
    authorship_declaration: true,
    company_confirmation: true,
    glossary: (("Telematik", "Die Kombination aus Telekommunikation und Informatik"),),
    appendix: include "chapters/appendix.typ",
  ),
)

// ---------- english ----------
#set text(lang: "en")
#include "chapters/01.typ"

// ---------- german ----------
#set text(lang: "de")
#include "chapters/02.typ"
  ```]


= Vollständige `main.typ` 

#figure(caption: [Vollständigemain.typ])[
  ```typst

#import "@preview/thwildau-thesis:0.1.0": (
  abbreviation, conf, define_abbreviation, define_unit, infocard, tables, th-color, todo, unit,
) // TH-Wildau template

// template configuration
#show: conf.with(
  title: "TH-Wildau Typst Template",
  titlepage: "internship",
  student: (
    name: "Clara Fall",
    matrnr: "12345678",
    subject: "Praxisintegrierender Bachelor Studiengang Telematik",
    seminar_group: "T23",
    semester: "4",
  ),
  supervisor: (
    name: "Frau Dr. Lieschen Müller",
    mail: "mueller@beispielag.de",
  ),
  internship: (
    type: "3. Betriebspraktikum",
    partner: [Beispiel AG \ Straßenweg 1 \ 12345 Musterstadt \ #link("https://beispielag.de")],
    period: "16.06.2025 bis 25.07.2025",
  ),
  bibliography: bibliography("bib.yaml", style: "institute-of-electrical-and-electronics-engineers"),
  language: "de",
  misc_pages: (
    bibliographic_description: (
      de: (
        title_long: "TH-Wildau Typst Tempalte für Thesis und Praktikumsbericht",
        metadata: " ",
        keywords: "Typst, Thesis, Template, TH-Wildau",
        goal: [Erstellung eines neue Typst Projektes mit dem TH-Wildau Template.],
        abstract: [In dieser Arbeit wird erklärt, wie das darin verwendete Typst-Template konfiguriert und angewendet werden kann.],
      ),
      en: (
        title_long: "TH-Wildau Typst template for thesis and intership.",
        metadata: " ",
        keywords: "Typst, Thesis, Template, TH-Wildau",
        goal: [Creation of a new typst project with the TH-Wildau template.],
        abstract: [This thesis aims to explain the process of installing, configuring and applying the TH-Wildau typst template.],
      ),
    ),
    reading_guides: todo()[Beispiele für Konfiguration aktualisieren],
    authorship_declaration: true,
    company_confirmation: true,
    glossary: (("Telematik", "Die Kombination aus Telekommunikation und Informatik"),),
    appendix: include "chapters/appendix.typ",
  ),
)

// ---------- english ----------
#set text(lang: "en")
#include "chapters/01.typ"

// ---------- german ----------
#set text(lang: "de")
#include "chapters/02.typ"
  ```]

