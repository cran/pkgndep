## ---- echo = FALSE------------------------------------------------------------
library(knitr)
knitr::opts_chunk$set(
    warning = FALSE,
    message = FALSE,
    fig.align = "center")

## ---- eval = FALSE------------------------------------------------------------
#  library(pkgndep)
#  x = pkgndep("DESeq2")

## ---- echo = FALSE------------------------------------------------------------
library(pkgndep)
lt = load_all_pkg_dep()
x = lt[["DESeq2"]]

## ---- fig.width = 36.96, fig.height = 8.34, out.width="1200px"----------------
plot(x)

## -----------------------------------------------------------------------------
# or create the plot in an HTML page
# dependency_report(x)

## -----------------------------------------------------------------------------
m = co_heaviness(x)
m

## ---- fig.width = 6.5, fig.height = 5-----------------------------------------
library(ComplexHeatmap)
Heatmap(m, name = "co-heaviness")

## -----------------------------------------------------------------------------
co_heaviness(x, jaccard = TRUE)

