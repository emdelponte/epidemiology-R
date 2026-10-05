// R4PDE: mimic the HTML (zephyr + r4pd.scss) look
#let olive = rgb("#5f7132")
#let ink = rgb("#263126")
#let head-ink = rgb("#24301f")
#let muted = rgb("#6f7668")
#let ui-font = ("Inter", "Segoe UI")
#set page(paper: "a4", margin: (x: 2.2cm, y: 2.3cm))
#set text(font: ui-font, size: 10.5pt, fill: ink, lang: "en")
#set par(justify: false, leading: 0.7em, spacing: 1.1em, first-line-indent: 0pt)
#show raw: set text(font: ("Consolas"), size: 0.88em)
#show raw.where(block: true): set block(fill: rgb("#f7f7f7"), stroke: 0.6pt + rgb("#e1e1e1"), radius: 5pt, inset: 9pt, width: 100%)
#show link: set text(fill: rgb("#52662d"))
#show heading: set text(font: ui-font, fill: head-ink, weight: "bold")
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(1.5cm)
  block(width: 100%, below: 1.1em)[
    #set text(size: 24pt)
    #if it.numbering != none { text(fill: olive)[#counter(heading).display(it.numbering)] ; h(0.4em) }
    #it.body
    #v(-0.2em)
    #line(length: 100%, stroke: 1.2pt + olive)
  ]
}
#show heading.where(level: 2): it => block(width: 100%, above: 1.8em, below: 1em, breakable: false)[
  #set text(size: 16pt)
  #it.body
  #v(-0.5em)
  #line(length: 100%, stroke: 0.8pt + rgb("#f2f2f2"))
]
#show heading.where(level: 3): it => block(above: 1.5em, below: 0.8em, text(size: 13pt, it.body))
#show heading.where(level: 4): it => block(above: 1.3em, below: 0.6em, text(size: 11.5pt, it.body))
#show figure.caption: set text(size: 9pt, fill: muted)
#show table: set text(size: 9pt)
#set table(stroke: (x, y) => if y == 0 { (bottom: 1.2pt + olive) } else { (bottom: 0.5pt + rgb("#e1e1e1")) })

// Part pages: simple title page (replaces the orange-book part page with its mini outline)
#let part-n = counter("r4pd-part")
#let part(title) = {
  pagebreak(weak: true)
  part-n.step()
  page(header: none)[
    #v(7cm)
    #block(width: 100%)[
      #set text(font: ui-font, fill: head-ink)
      #text(size: 13pt, weight: "semibold", fill: olive, tracking: 0.12em)[#upper[Part #context part-n.display("I")]]
      #v(0.4em)
      #text(size: 32pt, weight: "bold")[#title]
      #v(0.6em)
      #line(length: 100%, stroke: 1.2pt + olive)
    ]
  ]
}

#show cite: set text(fill: rgb("#52662d"))
#show ref: set text(fill: rgb("#52662d"))
#show outline: set text(font: ui-font, size: 9.5pt)
#show outline.entry: set text(fill: ink)

#set bibliography(title: none)
