## code to prepare `bird_counts` dataset goes here

bird_counts <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-18/bird_counts.csv")

bird_counts <- bird_counts[complete.cases(bird_counts), ]

usethis::use_data(bird_counts, overwrite = TRUE)


## code to prepare `yearly_data` dataset goes here

yearly_data <- bird_counts %>%
  dplyr::select(year, species, how_many_counted) %>%
  dplyr::group_by(year, species) %>%
  dplyr::summarize(how_many_counted = sum(how_many_counted)) %>%
  dplyr::arrange(desc(how_many_counted)) %>%
  dplyr::slice(1:5)

usethis::use_data(yearly_data, overwrite = TRUE)


## code to prepare `year_data` dataset goes here

year_data <- bird_counts %>%
  dplyr::select(year, species, how_many_counted) %>%
  dplyr::group_by(year, species) %>%
  dplyr::summarize(how_many_counted = sum(how_many_counted)) %>%
  dplyr::arrange(desc(how_many_counted)) %>%
  dplyr::slice(1)

usethis::use_data(year_data, overwrite = TRUE)


## code to prepare `hourly_data` dataset goes here

hourly_data <- bird_counts %>%
  dplyr::group_by(total_hours) %>%
  dplyr::summarize(how_many_counted = sum(how_many_counted)) %>%
  dplyr::mutate(
    range_of_hours = dplyr::case_when(
      how_many_counted > 5000 & how_many_counted < 10000 ~ "Between 8 and 116 hours",
      how_many_counted > 10000 & how_many_counted < 20000 ~ "Between 80 and 169 hours",
      how_many_counted > 20000 ~ "Higher than 150 hours",
      how_many_counted < 5000 ~ "Less than 70 hours"
    )
)

usethis::use_data(hourly_data, overwrite = TRUE)

