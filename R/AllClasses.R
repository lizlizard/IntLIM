#' MetaboliteSet class extenstion for MultiDataSet object
#'
#' This class is specific to metabolomics data and will then be stored into the class
#' \code{MultiDataSet}, which stores multiple dataset types (e.g. metabolite and gene levels
#' in this case.
#'
#' @name MetaboliteSet-class
#' @rdname MetaboliteSet-class
#' @exportClass MetaboliteSet
#' @slot eSet List of eSet elements

if(!require("Biobase")) install.packages("Biobase") 

methods::setClass (
	Class = "MetaboliteSet",
	contains = "eSet",
)

#' IntLimResults class
#'
#' @name IntLimResults-class
#' @rdname IntLimResults-class
#' @exportClass IntLimResults
#' @slot interaction.pvalues matrix of interaction p-values
#' @slot interaction.adj.pvalues matrix of adjusted interaction pvalues
#' @slot corr matrix of correlations in group 1 and 2
#' @slot warnings a message of whether genes and metabolites have 0 standard deviation
#' @slot stype column name that represents sample type (by default, it will be used
#' in the interaction term). Only 2 categories are currently supported.
#' @slot outcome outcome is either 'metabolite' or 'gene'
#' @slot covar describing additional variables and the class they form
methods::setClass(
	Class="IntLimResults",
	representation(interaction.pvalues="matrix", 
		interaction.adj.pvalues="matrix",
		corr="data.frame",
		filt.results="data.frame",
		warnings="character",
		stype="character",
		outcome="character",
		covar="data.frame"))


