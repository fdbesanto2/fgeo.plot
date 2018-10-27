% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autoplot-sp_elev.R
\name{autoplot.sp_elev}
\alias{autoplot.sp_elev}
\title{Quick plot of species distribution and topography.}
\usage{
\method{autoplot}{sp_elev}(object, fill = "black", shape = 21,
  point_size = 3, facet = TRUE, contour_size = 0.5, low = "blue",
  high = "red", hide_color_legend = FALSE, bins = NULL,
  add_elevation_labels = TRUE, label_size = 3, label_color = "grey",
  xyjust = 1, fontface = "italic", xlim = NULL, ylim = NULL,
  custom_theme = NULL, ...)
}
\arguments{
\item{object}{An object created with \code{\link[=sp_elev]{sp_elev()}}.}

\item{fill}{Character; either a colour or "sp", which maps each species to a
different color.}

\item{shape}{A number giving point size and shape (as in
\code{\link[graphics:points]{graphics::points()}}). Passed to \code{\link[ggplot2:geom_point]{ggplot2::geom_point()}}.}

\item{point_size}{A number giving point size and shape (as in
\code{\link[graphics:points]{graphics::points()}}). Passed to \code{\link[ggplot2:geom_point]{ggplot2::geom_point()}}.}

\item{facet}{(Not available for \code{plot_each_species()}) Logical; \code{TRUE} wraps
multiple maps within the area of a single graphic plot.}

\item{contour_size}{A number giving the size of the contour of elevation
lines. Passed to \code{ggplot2::stat_contour()} (see \code{\link[ggplot2:geom_contour]{ggplot2::geom_contour()}}).}

\item{low}{A string giving a color of the elevation lines representing
low and high elevation.}

\item{high}{A string giving a color of the elevation lines representing
low and high elevation.}

\item{hide_color_legend}{Logical; \code{TRUE} hides the color legend.}

\item{bins}{A number giving the number of elevation lines to map.}

\item{add_elevation_labels}{Logical; \code{FALSE} hides elevation labels.}

\item{label_size}{A number (\code{label_size}) or character
string (\code{label_color} and \code{fontface}) giving the size, colour and fontface
of the text labels for the elevation lines.}

\item{label_color}{A number (\code{label_size}) or character
string (\code{label_color} and \code{fontface}) giving the size, colour and fontface
of the text labels for the elevation lines.}

\item{xyjust}{A number to adjust the position of the text labels of the
elevation lines.}

\item{fontface}{A number (\code{label_size}) or character
string (\code{label_color} and \code{fontface}) giving the size, colour and fontface
of the text labels for the elevation lines.}

\item{xlim}{A vector of length 2, for example \code{c(0, 500)}, giving the
minimum and maximum limits of the vertical and horizontal coordinates.}

\item{ylim}{A vector of length 2, for example \code{c(0, 500)}, giving the
minimum and maximum limits of the vertical and horizontal coordinates.}

\item{custom_theme}{A valid \code{\link[ggplot2:theme]{ggplot2::theme()}}. \code{NULL} uses the default
theme \code{\link[=theme_default]{theme_default()}}.}

\item{...}{Other arguments passed to methods.}
}
\value{
A "ggplot".
}
\description{
Automatically plot the \code{sp} and \code{elev} variables of a ForestGEO-like
dataset of class 'sp_elev'. You can create a 'sp_elev' \code{object} with:

\preformatted{object <- sp_elev(DATA-WITH-VARIABLE-sp, DATA-WITH-VARIABLE-elev)
}

See sections \strong{Usage} and \strong{Examples}.
}
\section{Comparison with ggplot2}{

These functions wrap functions from the \strong{ggplot2} package. For more
control you can use \strong{ggplot2} directly or smaller wrappers in
\strong{fgeo.map} (see the sections See Also and Examples). \strong{ggplot2}
will give you maximum control and is your best choice if you are already
familiar with it. The wrapper functions in \strong{fgeo.map} focus on
ForestGEO's data: For example, their names commonly mention the variable of a
ForestGEO dataset they work with.

The most important difference between \strong{ggplot2} and \strong{fgeo.map}
is in the way you compose multiple functions to create complex plots. With
\strong{ggplot2} you compose multiple functions with \code{+}. For example,
to apply functions \code{f()} then \code{g()} you do something like this:
\code{f(data) + g()}. With \strong{fgeo.map} you compose multiple functions
in the usual way with \code{g(f(data))}, or in the modern way with the pipe:
\code{f(data)} \code{\%>\%} \code{g()} -- it is up to you. To learn more
about the pipe see http://r4ds.had.co.nz/pipes.html.
}

\examples{
# Small dataset with a few species for quick examples
some_sp <- c("PREMON", "CASARB")
census <- subset(fgeo.data::luquillo_tree5_random, sp \%in\% some_sp)
elevation <- fgeo.data::luquillo_elevation

# Customize
autoplot(sp_elev(census, elevation), facet = FALSE, point_size = 1)
}
\seealso{
\code{\link[=autoplot]{autoplot()}}, \code{\link[=sp_elev]{sp_elev()}}.

Other autoplots: \code{\link{autoplot.elev}},
  \code{\link{autoplot.fgeo_habitat}},
  \code{\link{autoplot.sp}}

Other functions to plot elevation: \code{\link{autoplot.elev}},
  \code{\link{autoplot_by_species.sp_elev}},
  \code{\link{elev}}, \code{\link{sp_elev}}

Other functions to plot species: \code{\link{autoplot.sp}},
  \code{\link{autoplot_by_species.sp_elev}},
  \code{\link{autoplot_by_species.sp}},
  \code{\link{sp_elev}}, \code{\link{sp}}
}
\concept{autoplots}
\concept{functions to plot elevation}
\concept{functions to plot species}