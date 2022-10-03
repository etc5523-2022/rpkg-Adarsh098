
#' @title Birds counted hourly.
#' @description A function that takes the count of birds as an input and allows the user to view the number of hours it took to count that many birds.
#' @param how_many_counted A numeric input greater than 0
#' @examples
#' count_by_hours(5000)
#' @export
count_by_hours <- function(how_many_counted) {
  count <- dplyr::case_when(how_many_counted >= 5000 & how_many_counted < 10000 ~ "Between 8 and 116 hours",
                            how_many_counted >= 10000 & how_many_counted < 20000 ~ "Between 80 and 169 hours",
                            how_many_counted >= 20000 ~ "Higher than 150 hours",
                            how_many_counted < 5000 ~ "Less than 70 hours")
  return(count)
}
