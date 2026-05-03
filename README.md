# R4PDE: R for Plant Disease Epidemiology

This repository contains the source files, code, figures, data examples, and Quarto configuration for **R4PDE: R for Plant Disease Epidemiology**, an online book about describing, visualizing, modeling, and predicting plant disease epidemics with R.

Read the book online at [r4pde.net](https://r4pde.net/).

## About the book

**R for Plant Disease Epidemiology** is rooted in the annual graduate course **FIP 602 - Plant Disease Epidemiology**, offered in the Graduate Program in Plant Pathology at Universidade Federal de Vicosa. The book is designed for students, researchers, and practitioners interested in analyzing epidemic data collected over time and space.

The book is not intended to be a general introduction to data science in R. Instead, it assumes some basic familiarity with R and focuses on epidemiological concepts and workflows that are common in plant pathology, including disease assessment, disease progress curves, spatial pattern analysis, yield loss relationships, and disease prediction.

Several examples draw on concepts and analyses from *The Study of Plant Disease Epidemics* by Madden, Hughes, and van den Bosch, alongside modern R packages for plant disease epidemiology.

## What is covered

The current book is organized around the main kinds of data and questions encountered in plant disease epidemiology:

- **Introduction to plant disease epidemiology**: disease concepts, epidemic importance, historical context, and additional resources.
- **Epidemic data**: terminology, ordinal disease data, actual severity, assessment accuracy, standard area diagrams, training, and remote sensing.
- **Temporal analysis**: disease progress curves, epidemic classification, AUDPC, functional comparison of curves, population growth models, and model fitting.
- **Spatial analysis**: spatial gradients, spatial models, model fitting, spatial patterns, and statistical tests for spatial aggregation.
- **Epidemics and yield**: crop loss concepts and regression models relating disease intensity to yield loss.
- **Disease prediction**: warning systems, risk models, and disease modeling workflows.

The examples combine epidemiological explanation with reproducible R code, plots, and worked analyses.

## Companion R package

The book uses general R packages as well as plant pathology-focused packages such as [{epifitter}](https://alvesks.github.io/epifitter/) and [{epiphy}](https://chgigot.github.io/epiphy/). It also uses the companion package [{r4pde}](https://github.com/emdelponte/r4pde), which provides functions and themes used throughout the book.

Install the released version of `r4pde` from CRAN:

```r
install.packages("r4pde")
```

Install the development version from GitHub with [{pak}](https://pak.r-lib.org/):

```r
install.packages("pak")
pak::pkg_install("Icens")
pak::pkg_install("emdelponte/r4pde")
```

## Repository structure

Important files and folders include:

- `_quarto.yml`: book configuration, chapter order, theme, bibliography, and output settings.
- `index.qmd`: welcome page and overview of the book.
- `intro.qmd`: introductory chapter on plant disease epidemiology.
- `data-*.qmd`: chapters on epidemic data and disease assessment.
- `temporal-*.qmd`: chapters on temporal epidemic analysis.
- `spatial-*.qmd`: chapters on spatial epidemic analysis.
- `yieldloss-*.qmd`: chapters on crop loss and yield loss modeling.
- `prediction-*.qmd`: chapters on disease warning systems and prediction.
- `references.bib`: bibliography used by the book.
- `imgs/` and `images/`: source images and figures used in chapters.

## Rendering the book locally

To build the book locally, install:

- [R](https://www.r-project.org/)
- [Quarto](https://quarto.org/)
- The R packages used in the chapters, including `tidyverse`, `r4pde`, `epifitter`, `epiphy`, and other packages loaded by individual chapters.

Then clone the repository and render the book:

```bash
git clone https://github.com/emdelponte/epidemiology-R.git
cd epidemiology-R
quarto render
```

To render a single chapter:

```bash
quarto render temporal-dpc.qmd
```

The rendered website is written to the `_book/` directory.

## Citation

If you use the book in teaching, research, or extension material, please cite it as described in the [How to cite](https://r4pde.net/cite.html) page of the book.

## Contributing

Contributions are welcome through issues and pull requests. Useful contributions include:

- Reporting errors or broken code chunks.
- Suggesting clearer explanations or examples.
- Improving figures, data examples, or exercises.
- Updating package syntax when R packages change.
- Proposing new epidemiological workflows that fit the scope of the book.

Before contributing, please keep the style of the book in mind: examples should be reproducible, epidemiologically motivated, and useful for readers who are learning plant disease epidemiology with R.

## License

The book content is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/).

R4PDE is written by [Emerson M. Del Ponte](http://emersondelponte.netlify.app/).
