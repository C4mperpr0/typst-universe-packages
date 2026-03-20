#let user_input(
  var,
  path,
  example,
  check_dict: true
) = {
  assert(
    var != none,
    message: str(
      "\nMissing variable in configuration: "
        + path
        + "\n"
        + "For example: \t"
        + path
        + ": "
        + repr(example)
        + "\n"
        + "Please add the missing definition to your configuration of the th-thesis template.",
    ),
  )

  // if given example is a dictionary, use recursion to check whole dictionary
  if check_dict and type(example) == dictionary {
    for key in example.keys() {
      user_input(
        var.at(key, default: none),
         path + "." + key,
         example.at(key),
      )
    }
  }
}

