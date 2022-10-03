
#' @title Top five birds counted yearly
#' @description This function takes year as an input and allows user to view the top five birds counted in that year. It is also a parameterised version of the output of panel four of the shiny application of this package where the input "year" corresponds to the argument "num" in the function.
#' @param num A numeric input of year between 1921 - 2017.
#' @examples
#' top_five_birds_yearly(1960)
#' @export
top_five_birds_yearly <- function(num) {
  year <- NULL
  if (nrow(rbirds.pkg::yearly_data %>% filter(year == num)) > 0) {
    return (rbirds.pkg::yearly_data %>% filter(year == num))
  } else {
    return (NULL)
  }
}
