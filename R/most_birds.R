
#' @title Most birds counted during Christmas.
#' @description A function to view most birds counted.
#' @export
most_birds <- function() {
 rbirds.pkg::bird_counts %>%
    dplyr::group_by(species) %>%
    dplyr::summarize(how_many_counted = sum(how_many_counted)) %>%
    dplyr::arrange(desc(how_many_counted)) %>%
    dplyr::slice(1:5)
}

