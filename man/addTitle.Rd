% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addTitle.R
\name{addTitle}
\alias{addTitle}
\alias{addTitle.docx}
\alias{addTitle.pptx}
\alias{addTitle.bsdoc}
\title{Add a title}
\usage{
addTitle(doc, value, ...)

\method{addTitle}{docx}(doc, value, level = 1, ...)

\method{addTitle}{pptx}(doc, value, ...)

\method{addTitle}{bsdoc}(doc, value, level = 1, id, ...)
}
\arguments{
\item{doc}{document object}

\item{value}{\code{"character"} value to use as title text}

\item{...}{further arguments passed to or from other methods..}

\item{level}{\code{"integer"} positive value to use as
heading level. 1 for title1, 2 for title2, etc. Default to 1.}

\item{id}{\code{character} single and unique value to use as
title id when doc is \code{bsdoc}.}
}
\value{
a document object
}
\description{
Add a title into a document object
}
\details{
Function addTitle when used with docx object needs to know which
style correspond to which title level (1 ; 1.1 ; 1.1.1 ; etc.).
When a template is read, ReporteRs tries to guess what are the available
styles (english, french, chinese, etc.). If styles for titles has not
been detected you will see the following error when addTitle is being called:

\code{You must defined title styles via map_title first.}

As the error message points out, you have to call the function `map_title` to
indicate which available styles are meant to be used as title styles.

To add a title into a pptx object you
only have to specify the text to use as title. There is no level concept.
}
\examples{

# Title example for MS Word -------
doc.filename = "ex_add_title.docx"

options( "ReporteRs-fontsize" = 10 )
doc <- docx( )

doc = addTitle( doc, "Title example 1", level = 1 )

doc = addTitle( doc, "Title example 2", level = 1 )

writeDoc( doc, file = doc.filename )

# Title example for PowerPoint -------
doc.filename = "ex_add_title.pptx"

options( "ReporteRs-fontsize" = 24 )
doc = pptx( title = "title" )

# add a slide with layout "Title and Content"
doc = addSlide( doc, slide.layout = "Title and Content" )

doc = addTitle( doc, "Title example 1" )

writeDoc( doc, file = doc.filename )
}
\seealso{
\code{\link{map_title}}
}

