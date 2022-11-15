## ---- echo = FALSE, message = FALSE-------------------------------------------
library(pkgndep)
pkgndep:::load_all_pkg_dep()

## ---- echo = FALSE------------------------------------------------------------
x = pkgndep:::env$all_pkg_dep[["cola"]]
pdf(NULL)
size = dependency_heatmap(x, help = FALSE)
invisible(dev.off())

## ---- fig.width = size[1], fig.height = size[2], out.width = "1000px", echo = FALSE----
dependency_heatmap(x)

## ---- echo = FALSE------------------------------------------------------------
if(grepl("devel", R.version$status)) {
  pkgndep = function(...) {
      pkgndep::pkgndep(..., online = FALSE)
  }
}

## -----------------------------------------------------------------------------
library(pkgndep)
pkg = pkgndep("ComplexHeatmap")
pkg

## ---- echo = FALSE------------------------------------------------------------
pdf(NULL)
size = dependency_heatmap(pkg, help = FALSE)
invisible(dev.off())

## ---- fig.width = size[1], fig.height = size[2], out.width = "1000px"---------
dependency_heatmap(pkg)

## ---- eval = FALSE------------------------------------------------------------
#  dependency_heatmap(pkg, file = "test.png")

## ---- eval = FALSE------------------------------------------------------------
#  dependency_report(pkg)

## -----------------------------------------------------------------------------
heaviness(pkg)
heaviness(pkg, rel = TRUE)

## -----------------------------------------------------------------------------
chooseCRANmirror(ind = 1) # choose the mirror fro RStudio
db = available.packages()

## -----------------------------------------------------------------------------
system.time(p1 <- tools::package_dependencies("ggplot2", db = db, recursive = TRUE)[[1]])

## -----------------------------------------------------------------------------
db2 = reformat_db(db)
db2
system.time(p2 <- db2$package_dependencies("ggplot2", recursive = TRUE, simplify = TRUE))

## -----------------------------------------------------------------------------
identical(sort(p1), sort(p2))

## ---- eval = FALSE------------------------------------------------------------
#  dependency_website()

## -----------------------------------------------------------------------------
sessionInfo()

