
#let sans(it) = {
  set text(font: ("IBM Plex Sans", "Arial"), size: 11pt,)
  it
}

#let today = {
  datetime.today().display("[day] [month repr:long] [year]")
}

#let signature(title: "", date: "", author: "") = {
  align(center, text(1.4em)[
    *#title*
    #v(0.6em)
  ])
  align(center, text(1.1em)[
    #date
    #v(0.6em)
    #author
  ])
  v(0.6em)
}

#let endoc(doc) = {
  set text(font: ("IBM Plex Serif", "Times New Roman"), size: 11pt,)
  show math.equation: set text(font: "STIX Two Math")
  show raw: set text(font: ("Cascadia Code", "Courier New"), size: 1.1em)

  set heading(numbering: "1.")

  set page(margin: (top: 30mm, rest: 25mm))
  set par(first-line-indent: 2em, justify: true, leading: 1em)
  set block(spacing: 1em)

  show heading: it => {
    v(0.6em)
    it
    par(text(size: 0.6em, ""))
  }

  let gtheading(it) = {
    text(sans[#h(-1em) *#it* #h(1em)])
  }

  [#doc]
}

