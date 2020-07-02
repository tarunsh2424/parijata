#' clf4
#'
#' @return  provide f'q/f'm
#' @description it require f',f'm data in ".xlsx" format
#' @export
#'
#'@import openxlsx
clf4<-function(){library(openxlsx)
  x<-read.xlsx(choose.files(default = "", caption = "select f' file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)

  y<-read.xlsx(choose.files(default = "", caption = "select fm' file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)
  a<-read.xlsx(choose.files(default = "", caption = "select fo' file",
                            multi = TRUE, filters = Filters,
                            index = nrow(Filters)),
               sheet = as.integer(readline(prompt="Enter sheet No: ")),
               startRow = 1,
               colNames = FALSE)
  z<-abs(y-x)
  b<-abs(y-a)
  Photochemical_quenching<-z/b
  View(Photochemical_quenching)
  write.xlsx(Photochemical_quenching,file=choose.files(default = "", caption = "save the file,NOTE:add .xlsx with file name",
                                                       multi = TRUE, filters = Filters,
                                                       index = nrow(Filters)))}

