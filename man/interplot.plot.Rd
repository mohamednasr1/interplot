% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Interplot_plot.R
\name{interplot.plot}
\alias{interplot.plot}
\title{Plot Conditional Coefficients in Models with Interaction Terms}
\usage{
\method{interplot}{plot}(
  m,
  var1 = NULL,
  var2 = NULL,
  plot = TRUE,
  steps = NULL,
  ci = 0.95,
  adjCI = FALSE,
  hist = FALSE,
  var2_dt = NULL,
  predPro = FALSE,
  var2_vals = NULL,
  point = FALSE,
  sims = 5000,
  xmin = NA,
  xmax = NA,
  ercolor = NA,
  esize = 0.5,
  ralpha = 0.5,
  rfill = "grey70",
  ci_diff = NULL,
  ...
)
}
\arguments{
\item{m}{A model object including an interaction term, or, alternately, a data frame recording conditional coefficients. This data frame should includes four columns:
\itemize{
   \item fake: The sequence of \code{var1} (the item whose effect will be conditioned on in the interaction);
   \item coef1: The point estimates of the coefficient of \code{var1} at each break point.
   \item ub: The upper bound of the simulated 95\% CI.
   \item lb: The lower bound of the simulated 95\% CI.
}}

\item{var1}{The name (as a string) of the variable of interest in the interaction term; its conditional coefficient estimates will be plotted.}

\item{var2}{The name (as a string) of the other variable in the interaction term.}

\item{plot}{A logical value indicating whether the output is a plot or a dataframe including the conditional coefficient estimates of var1, their upper and lower bounds, and the corresponding values of var2.}

\item{steps}{Desired length of the sequence. A non-negative number, which for seq and seq.int will be rounded up if fractional. The default is 100 or the unique categories in the \code{var2} (when it is less than 100. Also see \code{\link{unique}}).}

\item{ci}{is a numeric value inherited from the data wrangling functions in this package. Adding it here is just for the method consistency.}

\item{adjCI}{Succeeded from the data management functions in `interplot` package.}

\item{hist}{A logical value indicating if there is a histogram of `var2` added at the bottom of the conditional effect plot.}

\item{var2_dt}{A numerical value indicating the frequency distribution of `var2`. It is only used when `hist == TRUE`. When the object is a model, the default is the distribution of `var2` of the model.}

\item{predPro}{A logical value with default of `FALSE`. When the `m` is an output of a general linear model (class `glm` or `glmerMod`) and the argument is set to `TRUE`, the function will plot predicted probabilities at the values given by `var2_vals`.}

\item{var2_vals}{A numerical value indicating the values the predicted probabilities are estimated, when `predPro` is `TRUE`.}

\item{point}{A logical value determining the format of plot. By default, the function produces a line plot when var2 takes on ten or more distinct values and a point (dot-and-whisker) plot otherwise; option TRUE forces a point plot.}

\item{sims}{Number of independent simulation draws used to calculate upper and lower bounds of coefficient estimates: lower values run faster; higher values produce smoother curves.}

\item{xmin}{A numerical value indicating the minimum value shown of x shown in the graph. Rarely used.}

\item{xmax}{A numerical value indicating the maximum value shown of x shown in the graph. Rarely used.}

\item{ercolor}{A character value indicating the outline color of the whisker or ribbon.}

\item{esize}{A numerical value indicating the size of the whisker or ribbon.}

\item{ralpha}{A numerical value indicating the transparency of the ribbon.}

\item{rfill}{A character value indicating the filling color of the ribbon.}

\item{ci_diff}{A numerical vector with a pair of values indicating the confidence intervals of the difference between the conditional effects at the minimum and maximum values. The intervals can be use to interpret the significant}

\item{...}{Other ggplot aesthetics arguments for points in the dot-whisker plot or lines in the line-ribbon plots. Not currently used.}
}
\value{
The function returns a \code{ggplot} object.
}
\description{
Graph based on the data frame of statistics about the conditional effect of an interaction.
}
\details{
\code{interplot.plot} is a S3 method from the \code{interplot}. It generates plots of conditional coefficients.

Because the output function is based on \code{\link[ggplot2]{ggplot}}, any additional arguments and layers supported by \code{ggplot2} can be added with the \code{+}.
}
