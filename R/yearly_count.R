
#' @title Birds counted between 1960-1965 during Christmas.
#' @description A function that takes year between 1960-1965 as an input and allows the user to view the three most counted birds in that year. The data set used for this function is the yearly_data.
#' @export
yearly_count <- function(year) {
  if (year == 1960) {
    yearly_data %>%
      dplyr::filter(year == 1960)
  }
  else if  (year == 1961) {
    yearly_data %>%
      dplyr::filter(year == 1961)
  }
  else if  (year == 1962) {
    yearly_data %>%
      dplyr::filter(year == 1962)
  }
  else if  (year == 1963) {
    yearly_data %>%
      dplyr::filter(year == 1963)
  }
  else if  (year == 1964) {
    yearly_data %>%
      dplyr::filter(year == 1964)
  }
  else if  (year == 1965) {
    yearly_data %>%
      dplyr::filter(year == 1965)
  }
}













