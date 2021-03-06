% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opts.R
\name{build_aes_and_non_aes_lists}
\alias{build_aes_and_non_aes_lists}
\title{Construct Aesthetics List}
\usage{
build_aes_and_non_aes_lists(mvar_object, x = "axis_1", y = "axis_2",
  col = NULL, fill = NULL, shape = NULL, size = NULL, label = NULL,
  ...)
}
\arguments{
\item{mvar_object}{The mvar_object that we would like to plot.}

\item{x}{The column name specifying the x-axis in the ordination. Defaults
to axis_1 for each coord object in the mvar.}

\item{y}{The column name specifying the y-axis in the ordination. Defaults
to axis_2 for each coord object in the mvar.}

\item{col}{The color to use for points or text in the plot. This can either
be a column in one or more of the annotation objects, in which case the
values from that annotation will be used for coloring, or a string specifying
the actual color to use.}

\item{shape}{The points to use for points in the plot. This can either
be a column in one or more of the annotation objects, in which case the
values from that annotation will be used for coloring, or a string specifying
the actual color to use.}

\item{size}{The size of points in the plot. This can either be a column in
one or more of the annotation objects, in which case the values from that
annotation will be used for coloring, or a string specifying the actual color
to use.}

\item{label}{The label to use for text in the plot. This can either be a column in
one or more of the annotation objects, in which case the values from that
annotation will be used for coloring, or a string specifying the actual color
to use.}

\item{...}{Other arguments passed on to layer. These are often aesthetics, 
used to set an aesthetic to a fixed value, like pch = 16. They may also be parameters 
to the paired geom/stat.}
}
\value{
Two lists containing the aes and non aes options. Both lists have
 length given by the number layers in the mvar object. The i^th component
 contains directions for plotting the i^th layer. The aes list contains
 options that are column names in the corresponding annotation, the non-aes
 components are not in the data annotation.
}
\description{
While the plot\_mvar\_from\_opts is very flexible, it does not
provide an easy to use interface for the most common plotting procedures. This
provides some of the default plotting options for aes lists (those whose names
are columns in the mvar object) and non-aes lists (those that are not related
to the data, for example, calling geom_text() with col = "red".)
}

