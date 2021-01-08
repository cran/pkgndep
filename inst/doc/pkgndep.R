## -----------------------------------------------------------------------------
library(pkgndep)
x = pkgndep("ComplexHeatmap")
x

## ---- echo = FALSE------------------------------------------------------------
pdf(NULL)
size = plot(x)
invisible(dev.off())
width = as.numeric(size$width)
height = as.numeric(size$height)

## ---- fig.width = width, fig.height = height, out.width = "100%"--------------
plot(x)

## ---- eval = FALSE------------------------------------------------------------
#  plot(x, fix_size = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  size = plot(x)

## ---- eval = FALSE------------------------------------------------------------
#  pdf(NULL) # a null device
#  size = plot(x)
#  dev.off()
#  
#  width = as.numeric(size[1])
#  height = as.numeric(size[2])
#  
#  pdf(..., width = width, height = height)
#  plot(x)
#  dev.off()

