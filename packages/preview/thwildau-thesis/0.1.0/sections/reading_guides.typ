#import "../utils/translation.typ": translation

#let make_reading_guides(
  reading_guides: none
) = {
  heading(translation("Notes for the reader"))
  reading_guides
}
