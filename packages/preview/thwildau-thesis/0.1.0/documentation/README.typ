#import "@preview/showman:0.1.1": formatter

#set page(height: auto)
#show: formatter.template.with(
  // theme: "dark",
)

= TH-Wildau Thesis

== Installtion
You can create a new project in the web-app by following this link:

You can also import the package into an existing project by adding
```example
#import "@local/thwildau-thesis/0.1.0"
```
at the top

Or you can create a new thwildau-thesis project locally.

```bash
typst init thwildau-thesis
```

== Configuration

== Components
Thwildau-thesis does not only style your project into a nice looking thesis but it also offers you a few building blocks you might need.

=== Table
When creating a table, you will notice that it is already styled fittingly. Thwildau-thesis offers two designs of tables: #emph[x-header] and #emph[xy-header]. By default, #emph[x-header] will be used, but you are free to import and use a different design like so:
```example
#import "@local/thwildau-thesis/0.1.0": tables

#table(
  columns: 4,
  table.header(
    [ID],[Komponente],[Kriterium],[Anforderung]
  ),
  [F01],[Anwendung],[muss],[vorhandene Spiele finden können],
  [F02],[Anwendung],[muss],[vorhandene Spiele ausführen können]
)

#tables.xy-header(
  table(
    columns: 4,
    table.header(
      [ID],[Komponente],[Kriterium],[Anforderung]
    ),
    [F01],[Anwendung],[muss],[vorhandene Spiele finden können],
    [F02],[Anwendung],[muss],[vorhandene Spiele ausführen können]
  )
)
```

=== Info-Card
Another useful building block can be the info-card. It can be used to highlight an example, fact or just give more context to something. No matter your use, the implementation is straight forward:
```example
#import "@local/thwildau-thesis/0.1.0": infocard 

#infocard(
  // give it a header
  "Example: Info-Card",
  // define the content
  "Another useful building block can be the info-card. It can be used to highlight an example, fact or just give more context to something."
)
```

You can also change the colors to distinc between the diffent kinds of information you want to convey.
```example
#import "@local/thwildau-thesis/0.1.0": infocard 

#infocard(
  // give it a header
  "Example: Info-Card",
  // define the content
  "Another useful building block can be the info-card. It can be used to highlight an example, fact or just give more context to something.",
  color-dark: color.black,
  color-light: color.white
)
```

=== Unit
WORK IN PROGRESS

=== TH-Color
Now that you know which components there are, you may want to create your own. To speed up that progress thwildau-thesis has the colors used in the package available for you. They are imported using
```example
#import "@local/thwildau-thesis/0.1.0": th-color 
```. These are the available options:
MAKE THIS THING NOT SHOW CODE:
```example
#import "@local/thwildau-thesis/0.1.0": th-color 
make a loop with the text th-color.<color> in the according color
```

=== TODO
While all the other components are used in the thesis directly, this one is only here to enhance you workflow. With #emph[todo] you can mark parts of your document and leave a note for yourself. It will hightlight them, so that they are easy defined and it will also create an outline containing all #emph[todo]s so you can quickly check if you still have any in your document.
```example
#import "@local/thwildau-thesis/0.1.0": todo
== Cat#todo(info="plurial?")[s]
Cats are generally know to #todo(info="fact-check that! Add source")[be obidient to their human owner].

```
