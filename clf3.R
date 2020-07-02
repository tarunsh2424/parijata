#'  clf3
#'
#' @return  provide fv/fm
#' @description  it require fo,fm data in ".xlsx" format
#' @export
#'
#'@import openxlsx
clf3<-function(){library(openxlsx)
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
  z<-abs(y-x)
  PSII_operating_efficiency<-z/y
  View(PSII_operating_efficiency)
  write.xlsx(PSII_operating_efficiency,file=choose.files(default = "", caption = "save the file,NOTE:add .xlsx with file name",
                                                         multi = TRUE, filters = Filters,
                                                         index = nrow(Filters)))}


