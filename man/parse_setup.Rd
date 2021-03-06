% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_setup.R
\name{parse_setup}
\alias{parse_setup}
\title{Parse the setup file (.sps or .sas).}
\usage{
parse_setup(setup_file)
}
\arguments{
\item{setup_file}{Name of the SPSS or SAS setup file - should be a .sps or .sas (.txt also accepted as are these files in zipped format)}
}
\value{
A list of length 3. The first object ("setup") is a data frame
containing 4 columns: first the non-descriptive name of each column,
The second column is the descriptive name of the column. Columns three
and four and the beginning and ending number of the column (used to
determine the columns location in the fixed-with data file).

The second object ("value_labels") in the list is list of named vectors for the value labels. The
list has a length equal to the number of columns with value labels. If there are
no value labels, this will be NULL.

The third object ("missing") in the list is a data.frame with two columns. The first
column says the variable name and the second column says the value that is missing
and will be replaced with NA.
}
\description{
Parse the setup file (.sps or .sas).
}
\examples{
\dontrun{
sas_name <- system.file("extdata", "example_setup.sas",
                         package = "asciiSetupReader")
sas_example <- parse_setup(sas_name)

sps_name <- system.file("extdata", "example_setup.sps",
                         package = "asciiSetupReader")
sps_example <- parse_setup(sps_name)
}
}
