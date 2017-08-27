---
title: "Introduction to asciiReader"
author: "Jacob Kaplan"
date: "`r Sys.Date()`"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Vignette Title}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

Some datasets are only available in fixed-width delimited  (this means the each row has the same number of characters) text files (.txt) that have an SPSS setup file (.sps) that tells the SPSS software how to read in the data. This package allows R to read in this type of data by mimicking SPSS' process. To use it you need a text file containing data and the corresponding SPSS setup file. SPSS setup files come with the file extention .sps but changing it to .txt will work the same.


To use the spss_reader function, all that is needed is to provide a string with the name of the dataset (the .txt) file and a string with the name of the SPSS setup file (the .sps) including the file extention. The files must be in the working directory. Below is an example of reading in the example dataset - the original can be found [here](https://www.icpsr.umich.edu/icpsrweb/NACJD/studies/9327?q=&restrictionType%5B0%5D=Public+Use&classification%5B0%5D=NACJD.IX.*&dataFormat%5B0%5D=SPSS).
```{r}
example <- asciiReader::spss_reader(dataset_name = system.file("extdata", "example_data.txt", package = "asciiReader"),
sps_name = system.file("extdata", "example_sps.txt", package = "asciiReader"))
example[1:6, 1:4] # Look at first 6 rows and first 4 columns
```
There are two optional parameters: value_label_fix and real_names. The default for both is TRUE.

## value_label_fix
Fixed-width delimited text files are designed to be as compressed as possible. One way of doing this is having letters or numbers represent values. For example, instead of writing "male" or "female" in a column about gender, it will be "A" or "B" (or more commonly 0 or 1). The SPSS setup file gives the actual value of these repesentations. The parameter "value_label_fix" will give the real values if TRUE, otherwise it will keep the representation. This parameter is the most time consuming part of the function so if you have a very large dataset but only a few variables you are interested in, it may be wise to set it as FALSE.

```{r}
example <- asciiReader::spss_reader(dataset_name = system.file("extdata", "example_data.txt", package = "asciiReader"),
sps_name = system.file("extdata", "example_sps.txt", package = "asciiReader"),
value_label_fix = FALSE)
example[1:6, 1:4] # Look at first 6 rows and first 4 columns
```
## real_names
This parameter, when TRUE, changes the column names from the default (e.g. V1, V2) to the actual name as specified in the SPSS setup file. Though the real names are much more descriptive, if you have code for this dataset that uses the default names, it may be necessary to set this parameter as FALSE.
```{r}
example <- asciiReader::spss_reader(dataset_name = system.file("extdata", "example_data.txt", package = "asciiReader"),
sps_name = system.file("extdata", "example_sps.txt", package = "asciiReader"),
real_names = FALSE)
example[1:6, 1:4] # Look at first 6 rows and first 4 columns
```

## Future Goals for this Package
Create a parallel function that works with SAS setup files.
