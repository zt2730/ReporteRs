#' ReporteRs lets you create Microsoft Word, Microsoft PowerPoint
#' and html documents.
#'
#' To get an r document object:
#' \itemize{
#'   \item \code{\link{docx}} Create a Microsoft Word document object
#'   \item \code{\link{pptx}} Create a Microsoft PowerPoint document object
#'   \item \code{\link{bsdoc}} Create an HTML document object (deprecated)
#' }
#'
#' The following functions can be used whatever the output format is (docx, pptx, bsdoc).
#'
#' \itemize{
#'   \item \code{\link{addTitle}} Add a title
#'   \item \code{\link{addFlexTable}} Add a table (new)
#'   \item \code{\link{addPlot}} Add plots
#'   \item \code{\link{addImage}} Add external images
#'   \item \code{\link{addParagraph}} Add paragraphs of text
#'   \item \code{\link{addRScript}} Add an r script
#'   \item \code{\link{writeDoc}} Write the document into a file or a directory
#' }
#'
#' \code{ReporteRs} comes with an object of class \code{\link{pot}} to let you
#' handle text output and format. You can associate a text with formats (font
#' size, font color, etc.), with an hyperlink or with a \code{\link{Footnote}}
#' as a reference note.
#'
#' \code{ReporteRs} comes also with an object of class \code{\link{FlexTable}}
#' that let you design and format tabular outputs.
#'
#' Default values:
#'
#' With ReporteRs, some options can be used to reduce usage of some parameters:
#' \itemize{
#'   \item \code{"ReporteRs-default-font"} Default font family to use (default to "Helvetica").
#' This will be used as default values for argument \code{fontname} of \code{\link{addPlot}}
#' and argument \code{font.family} of \code{\link{pot}}.
#'
#'
#'   \item \code{"ReporteRs-fontsize"} Default font size to use (default to 11).
#' This will be used as default values for argument \code{pointsize} of \code{\link{addPlot}}
#' and argument \code{font.size} of \code{\link{pot}}.
#'
#' 	 \item \code{"ReporteRs-list-definition"} see \code{\link{list.settings}}.
#'   \item \code{"ReporteRs-locale.language"} language encoding (for html objects). Default to "en".
#'   \item \code{"ReporteRs-locale.region"} region encoding (for html objects). Default to "US".
#' }
#'
#' @note
#'
#' Examples are in a \code{dontrun} section as they are using font that may be not
#' available on the host machine. Default font is Helvetica, it can be modified
#' with option \code{ReporteRs-default-font}. To run an example with 'Arial'
#' default font, run first
#'
#' 	\code{options("ReporteRs-default-font" = "Arial")}
#'
#' @examples
#' options("ReporteRs-fontsize"=10, "ReporteRs-default-font"="Helvetica")
#' @example examples/options.listdefinitions.R
#' @name ReporteRs-package
#' @aliases ReporteRs
#' @title ReporteRs: a package to create document from R
#' @author David Gohel \email{david.gohel@@lysis-consultants.fr}
#' @docType package
NULL


