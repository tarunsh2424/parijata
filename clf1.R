#'  clf1
#' @description it require fo, fm data in ".xlsx" format
#'
#' @return provide fv/fm
#' @export
#'@import  openxlsx
#'
clf1<-function(){library(openxlsx)
  x<-read.xlsx(
    choose.files(default = "", caption = "select Fo file",
                 multi = TRUE, filters = Filters,
                 index = nrow(Filters)),
    sheet = as.integer(readline(prompt="Enter sheet No: ")),
    startRow = 1,
    colNames = FALSE)
  y<-read.xlsx(
    choose.files(default = "", caption = "select Fm file",
                 multi = TRUE, filters = Filters,
                 index = nrow(Filters)),
    sheet = as.integer(readline(prompt="Enter sheet No: ")),
    startRow = 1,
    colNames = FALSE)
  z<-abs(y-x)
  Maximum_quantum_efficiency_of_PSII  <-z/y
  View(Maximum_quantum_efficiency_of_PSII )
  write.xlsx(Maximum_quantum_efficiency_of_PSII,file=choose.files(default = "", caption = "save the file,NOTE:add .xlsx with file name",
                                                                  multi = TRUE, filters = Filters,
                                                                  index = nrow(Filters)))}
