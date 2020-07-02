#'  clf5
#'
#' @return provide NPQ
#'
#'
#' @description it require fm,f'm, data in ".xlsx" format
#' @export
#'
#'@import openxlsx
clf5<-function(){library(openxlsx)
  x<-read.xlsx(choose.files(default = "", caption = "select fm file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)

  y<-read.xlsx(choose.files(default = "", caption = "select f'm file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)
  z<-abs(y-x)
  NPQ<-z/y
  View(NPQ)
  write.xlsx(NPQ,file=choose.files(default = "", caption = "save the file,NOTE:add .xlsx with file name",
                                                       multi = TRUE, filters = Filters,
                                                       index = nrow(Filters)))}




