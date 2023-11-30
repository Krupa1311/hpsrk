
#' Title
#'
#' @param week
#'
#' @return
#' @export
#'
#' @examples
#' # Example 1: Import week 1 data:
#' load_data_week_number(1)
#'
library(arrow)
load_data_week_number <- function(week) {
  stopifnot(week %in% c(1, 2, 3, 4, 5
                      ))
  file_name <- paste0("HPS_week", week, "_data_parquet.parquet")
  file_path <- system.file("data-raw", file_name, package = "hpsrk")
  data <- read_parquet(file_path)
  return(data)
}
