#import "../utils/translation.typ": translation
#import "../utils/user_input.typ": user_input

#let make_titlepage_internship(
  title: none,
  student: none,
  supervisor: none,
  internship: none,
) = {
  // check user input
  user_input(title, "title", "My thesis")
  user_input(student, "student", (
    name: "Clara Fall",
    matrnr: "12345678",
    subject: "Telematics",
    seminar_group: "T23",
    semester: "4",
  ))
  user_input(supervisor, "supervisor", (
    name: "Frau Dr. Lieschen Müller",
    mail: "mueller@example.com",
  ))
  user_input(internship, "internship", (
    type: "3rd Internship",
    partner: [Beispiel AG \ Straßenweg 1 \ 12345 Musterstadt \ #link("https://example.com")],
    period: "16.06.2025 to 25.07.2025",
  ))

  // header
  grid(
    columns: (1fr, 5cm),

    align(left)[#text(12pt, translation("Wildau Technical University of Applied Sciences") + linebreak() + student.subject)],
    align(right)[#image("../assets/TH-Wildau-Logo_rgb.png", width: 5cm)],
  )
  v(2cm)

  // title
  align(center, text(title, size: 28pt, weight: "medium"))
  v(1.5cm)

  // content
  text(
    14pt,
    grid(
      columns: (1fr, 1fr),
      column-gutter: 1.4em,
      row-gutter: 1.6em,

      translation("Created by") + ":", student.name + linebreak() + student.matrnr,
      translation("Seminar group") + ":", student.seminar_group,
      translation("Semester") + ":", student.semester,
      translation("Type of internship") + ":", internship.type,
      translation("Company") + ":", internship.partner,
      translation("Supervisor") + ":", supervisor.name + linebreak() + link("mailto:" + supervisor.mail),
      translation("Internship period") + ":", internship.period,
    ),
  )
}

#let make_titlepage_content(
  page_content: none,
) = {
  user_input(page_content, "titlepage.content", "[My Titlepage]")
  page_content
}
