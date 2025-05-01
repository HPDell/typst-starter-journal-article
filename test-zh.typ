#import "@preview/starter-journal-article:0.4.1": article, author-meta, appendix, suffix, booktab
#import "@preview/cjk-unbreak:0.1.0": remove-cjk-break-space

#show: remove-cjk-break-space

#set text(lang: "zh", font: ("Times New Roman", "FandolSong"))

#let affiliations = (
  "UCL": "单位A地址",
  "TSU": "单位B地址"
)

#let author-list(authors, template, affiliations: affiliations) = {
  stack(dir: ltr, spacing: 1em, ..authors.map(it => template(it)))
}

#show: article.with(
  title: "论文标题",
  authors: (
    "作者一": author-meta(
      "UCL", "TSU",
      email: "author.one@inst.ac.uk",
    ),
    "作者二": author-meta(
      "TSU",
      cofirst: true
    ),
    "作者三": author-meta(
      "TSU"
    )
  ),
  affiliations: affiliations,
  abstract: [#lorem(100)],
  keywords: ("Typst", "模板", "期刊论文"),
  template: (
    title: (title) => {
      set align(left)
      set text(size: 1.5em, weight: "bold", style: "italic")
      title
    }
  )
)

#set heading(numbering: "1.")

= 简介

#lorem(20)
#footnote[#lorem(30)]
#lorem(20)
@fig:demo and @tbl:demo #lorem(10)
Moran's Indicator @Moran_1950, #lorem(20)

#figure(
  booktab(
    columns: 3,
    rows: 3,
    ..((lorem(2),) *9)
  ),
  caption: [A table caption.],
  placement: bottom
) <tbl:demo>

#figure(
  rect([Hello]),
  caption: [A figure caption.],
  placement: bottom
) <fig:demo>

In @app:demo, #lorem(20)

#show: suffix

= 致谢

#lorem(20)

#bibliography(
  bytes("@article{Moran_1950, title={Notes on Continuous Stochastic Phenomena}, volume={37}, ISSN={0006-3444}, DOI={10.2307/2332142}, number={1/2}, journal={Biometrika}, publisher={[Oxford University Press, Biometrika Trust]}, author={Moran, P. A. P.}, year={1950}, pages={17–23} }"),
  style: "apa"
)

#show: appendix

= #lorem(5) <app:demo>

#lorem(10)

== #lorem(2)

#lorem(20) @tbl:demo-app and @fig:demo-app #lorem(10)

#figure(
  table(
    columns: 3,
    rows: 3,
    ..((lorem(2),) *9)
  ),
  caption: [A table caption.]
) <tbl:demo-app>

#figure(
  rect([Hello]),
  caption: [A figure caption.]
) <fig:demo-app>

= #lorem(3)

#lorem(10)

#figure(
  rect([Hello]),
  caption: [A figure caption.]
) <fig:demo-app2>
