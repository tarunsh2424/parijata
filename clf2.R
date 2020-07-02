#'  clf2
#'
#  @description  it require f'o , f'm data in ".xlsx" format

#' @return provide f'o/f'm
#' @export
#'
#'@import openxlsx
clf2<-function(){library(openxlsx)
  x<-read.xlsx(
    choose.files(default = "", caption = "select fo' file",
                 multi = TRUE, filters = Filters,
                 index = nrow(Filters)),
    sheet = as.integer(readline(prompt="Enter sheet No: ")),
    startRow = 1,
    colNames = FALSE)
  y<-read.xlsx(
    choose.files(default = "", caption = "select fm' file",
                 multi = TRUE, filters = Filters,
                 index = nrow(Filters)),
    sheet = as.integer(readline(prompt="Enter sheet No: ")),
    startRow = 1,
    colNames = FALSE)
  z<-abs(y-x)
  Maximum_efficiency_of_PSII <-z/y
  View(Maximum_efficiency_of_PSII )
  write.xlsx(Maximum_efficiency_of_PSII,file=choose.files(default = "", caption = "save the file,NOTE:add .xlsx with file name",
                                                          multi = TRUE, filters = Filters,
                                                          index = nrow(Filters)))}


