
#let sans(it) = {
  set text(font: ("Source Sans 3", "Arial"), size: 11pt,)
  it
}

#let gtheading(it) = {
  set par(first-line-indent: 0em)
  text(sans[*#it* #h(1em)])
}


#let today = {
  datetime.today().display("[day] [month repr:long] [year]")
}

#let signature(title: "", date: "", author: "") = {
  align(center, text(1.4em)[
    *#title*
    #v(0.3em)
  ])
  align(center, text(1em)[
    #date
    #v(0.3em)
    #author
  ])
  v(0.6em)
}

#let endoc(doc, textfont: "Times New Roman", mathfont: "STIX Two Math") = {
  set text(font: (textfont, "Noto Serif JP", "Hiragino Mincho ProN", "BIZ UDPMincho"), size: 11pt,)
  show math.equation: set text(font: mathfont)
  show raw: set text(font: ("Cascadia Code", "Courier New"), size: 1.1em)

  set heading(numbering: "1.")
  set math.equation(numbering: "(1.1)")

  set page(margin: 1in, numbering: "1")
  set par(first-line-indent: 2em, justify: true, leading: 1em)
  set block(spacing: 1em)

  show heading: it => {
    // v(0.6em)
    it
    par(text(size: 0.3em, ""))
  }

  let gtheading(it) = {
    text(sans[#h(-1em) *#it* #h(1em)])
  }

  [#doc]
}

#let ensdoc(doc, textfont: "Times New Roman", mathfont: "STIX Two Math") = {
  set text(font: (textfont, "Noto Serif JP", "Hiragino Mincho ProN", "BIZ UDPMincho"), size: 10.5pt,)
  show math.equation: set text(font: mathfont)
  show raw: set text(font: ("Cascadia Code", "Courier New"), size: 1.1em)

  set heading(numbering: none)
  set math.equation(numbering: "(1.1)")

  set page(margin: 1in, numbering: "1")
  set par(first-line-indent: 2em, justify: true, leading: 0.8em)
  set block(spacing: 0.8em)

  show heading: it => {
    // v(0.6em)
    it
    par(text(size: 0.3em, ""))
  }

  let gtheading(it) = {
    text(sans[#h(-1em) *#it* #h(1em)])
  }

  [#doc]
}

#let aparticle(doc) = {
  set text(font: ("Noto Serif", "Source Serif 4", "Times New Roman"), size: 10.5pt,)
  show math.equation: set text(font: "STIX Two Math")
  show raw: set text(font: ("Cascadia Code", "Courier New"), size: 1.1em)

  set page(margin: (top: 1in, rest: 1in), numbering: "1")
  set par(first-line-indent: 2em, justify: true, leading: 0.8em)
  set block(spacing: 0.8em)

  show heading.where(level: 1): it => {
    // v(0.6em)
    set align(center)
    set text(12pt, weight: "bold")
    block(smallcaps(it.body))
    par(text(size: 0.5em, ""))
  }
  
  show heading.where(level: 2): it => {
    // v(0.6em)
    set align(left)
    set text(11pt, weight: "bold")
    block(it.body)
    par(text(size: 0.5em, ""))
  }

  show heading.where(level: 3): it => {
    // v(0.6em)
    set align(left)
    set text(10.5pt, weight: "bold")
    block(emph(it.body))
    par(text(size: 0.5em, ""))
  }

  let gtheading(it) = {
    text(sans[#h(-1em) *#it* #h(1em)])
  }

  [#doc]

}
