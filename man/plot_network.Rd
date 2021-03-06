% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_network.R
\name{plot_network}
\alias{plot_network}
\title{Network graph of ImSig genes}
\usage{
plot_network(exp, r = 0.6, pt.cex = 2, cex = 1, inset = 0,
  x.intersp = 2, vertex.size = 3, vertex.label = NA,
  layout = layout_with_fr)
}
\arguments{
\item{exp}{Dataframe of transcriptomic data (natural scale) containing genes as rows and samples as columns. Note: Gene names should be set as row names and duplicates are not allowed. Missing values are not allowed within the expression matrix. Check example- head(example_data): \code{\link{example_data}}.}

\item{r}{Use a value between 0 and 1. Default is 0.6. This is a user defined correlation cut-off to perform feature selection (\code{\link{feature_select}}). Feature selection aids to enrich the prediction of relative abundance of immune cells by filtering off poorly correlated ImSig genes. To get an idea of what cut-off to use check the results of (\code{\link{gene_stat}} and choose a cut-off that displays high median correlation and maintains a high proportion of genes after feature selection.}

\item{pt.cex}{expansion factor(s) for the points.}

\item{cex}{character expansion factor relative to current par("cex"). Used for text, and provides the default for pt.cex.}

\item{inset}{inset distance(s) from the margins as a fraction of the plot region when legend is placed by keyword.}

\item{x.intersp}{character interspacing factor for horizontal (x) spacing.}

\item{vertex.size}{Node size of network graph}

\item{vertex.label}{Add gene names to the network graph. Default set to NA.}

\item{layout}{Layout algorithm to be used for building network. Default set to force-directed layout algorithm by Fruchterman and Reingold. Read documentation of 'igraph' for other available algorithms.}
}
\value{
Network graph
}
\description{
A Network visualization displays undirected graph structures and highlights the relationships between entities. The nodes are ImSig genes and the edges represent the correlation between them. The nodes are coloured based on cell type. Try using a correlation cut-off of '0' to get a complete picture.
}
\examples{
plot_network (exp = example_data, r = 0.7)
}
\seealso{
\code{\link{feature_select}}
}
