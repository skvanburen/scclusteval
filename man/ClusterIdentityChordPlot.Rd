% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusterviz.R
\name{ClusterIdentityChordPlot}
\alias{ClusterIdentityChordPlot}
\title{Plot ChordDiagram of cell identity changes between two runs of clusters.}
\usage{
ClusterIdentityChordPlot(
  ident1,
  ident2,
  clusters_to_show_ident1 = NULL,
  big.gap = 10,
  transparency = 0.5,
  grid.col = NULL,
  link.sort = TRUE,
  link.decreasing = TRUE,
  directional = -1
)
}
\arguments{
\item{ident1}{a named factor vector. names are the cell names, the values are
the cluster id.}

\item{ident2}{a named factor vector. names are the cell names, the values are
the cluster id.}

\item{clusters_to_show_ident1}{A character vector of cluster ids to show for ident1.
default is NULL, all clusters will be shown.}

\item{big.gap}{Gap between sectors of two cluster runs.}

\item{transparency}{Transparency of link colors, 0 means no transparency and 1 means full transparency.
see \code{\link[circlize]{chordDiagramFromMatrix}}}

\item{grid.col}{Grid colors which correspond to matrix rows/columns (or sectors).
The length of the vector should be either 1 or length(union(rownames(mat), colnames(mat))).
It's preferred that grid.col is a named vector of which names correspond to sectors.
If it is not a named vector, the order of grid.col corresponds to order of sectors.
see \code{\link[circlize]{chordDiagramFromMatrix}}}

\item{link.sort}{whether sort links on every sector based on the width of the links on it.
If it is set to "overall", all links are sorted regardless whether they are from rows or columns.
see \code{\link[circlize]{chordDiagramFromMatrix}}}

\item{link.decreasing}{for link.sort}

\item{directional}{Whether links have directions. 1 means the direction is from the first column
in df to the second column, -1 is the reverse, 0 is no direction, and 2 for two directional.
see \code{\link[circlize]{chordDiagramFromMatrix}}}
}
\value{
A data frame which contains positions of links. see \code{\link[circlize]{chordDiagramFromMatrix}}
}
\description{
Plot ChordDiagram of cell identity changes between two runs of clusters.
}
