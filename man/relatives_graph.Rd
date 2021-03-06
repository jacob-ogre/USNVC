% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.R
\name{relatives_graph}
\alias{relatives_graph}
\title{Return an igraph of all ancestors and children of vertex v}
\usage{
relatives_graph(g, v)
}
\arguments{
\item{g}{The graph from which to get ancestors of vertex v}

\item{v}{The vertex of g from which to get children and ancestor vertices}
}
\value{
A subgraph of g with v and its ancestors and children
}
\description{
Return an igraph of all ancestors and children of vertex v
}
\examples{
relatives_graph(NVC_graph, "856963")
}
\seealso{
\link{children_graph}

\link{ancestors_graph}
}

