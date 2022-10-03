
#' @title Most counted bird in each year.
#' @description A function that takes year as an input and allows the user to view the most counted bird in that year. The data set used for this function is the yearly_data.
#' @param num A numeric input of year between 1921 - 2017.
#' @examples
#' yearly_count(1950)
#' @export
yearly_count <- function(num) {
  year <- NULL
  if (nrow(rbirds.pkg::year_data %>% dplyr::filter(year == num)) > 0) {
    return (rbirds.pkg::year_data %>% dplyr::filter(year == num))
  }
  else {
    return (NULL)
  }
}










