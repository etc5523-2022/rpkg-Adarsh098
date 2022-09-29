## code to prepare `bird_counts` dataset goes here

bird_counts <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-18/bird_counts.csv")

bird_counts <- bird_counts[complete.cases(bird_counts), ]

usethis::use_data(bird_counts, overwrite = TRUE)
