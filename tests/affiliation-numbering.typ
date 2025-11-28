#import "../lib.typ": article, author-meta

#show: article.with(
  title: "History and Evolution of Farmhouse Yeast",
  authors: (
    "Lars Marius Garshol": author-meta(
      "Indep",
      email: "larsga@garshol.priv.no",
    ),
    "Jan Steensels" : author-meta(
      "VIB", "CPMG", "LIBR"
    ),
    "Peter Bircham" : author-meta(
      "VIB", "CPMG", "LIBR", "Garage",
    ),
    "Andrea Del Cortona" : author-meta(
      "VIB", "CPMG", "LIBR", "Lizard",
    ),
    "Kevin Verstrepen" : author-meta(
      "VIB", "CPMG", "LIBR"
    ),
  ),
  affiliations: (
    "VIB": "VIB–KU Leuven Center for Microbiology, Leuven, Belgium",
    "CPMG": "CMPG Laboratory of Genetics and Genomics, Department M2S, KU Leuven, Leuven, Belgium",
    "LIBR" : "Leuven Institute for Beer Research, Leuven, Belgium",
    "Garage" : "Present address: Garage Project, Wellington, New Zealand",
    "Lizard": "Present address: BioLizard, Ghent, Belgium",
    "Indep" : "Independent researcher, Rælingen, Norway",
  ),

  abstract: [Something]
)