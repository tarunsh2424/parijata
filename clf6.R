#'
#' @title clf6
#'@return  provide qL
#'
#'@description it require f'o,f',f'm data in ".xlsx" format

#'@export
#'@import openxlsx

clf6<-function(){library(openxlsx)
  x<-read.xlsx(choose.files(default = "", caption = "select F'o file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)
  y<-read.xlsx(choose.files(default = "", caption = "select F' file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)
  z<-read.xlsx(choose.files(default = "", caption = "select F'm file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)
  a<-abs(z-y)
  b<-abs(z-x)
  m<-(a/b)
  n<-(x/y)
  qL<-m/n
  View(qL)
  write.xlsx(qL,file=choose.files(default = "", caption = "save the file,NOTE:add .xlsx with file name",
                                                                  multi = TRUE, filters = Filters,
                                                                  index = nrow(Filters)))}


