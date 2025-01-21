#!/bin/env Rscript

if (1 == 2) {
  readr::read_lines("n_registrations_in_time.csv")
}
registrations_in_time <- readr::read_csv(
  file = "n_registrations_in_time.csv",
  col_types = readr::cols(
    date = readr::col_date(format = "%d/%m/%Y"),
    n = readr::col_double(),
    cumulative = readr::col_double()
  )
)
if (1 == 2) {
  vroom::problems(registrations_in_time)
}

testthat::expect_true("n" %in% names(registrations_in_time))
testthat::expect_true("cumulative" %in% names(registrations_in_time))
testthat::expect_true("date" %in% names(registrations_in_time))

course_date <- readr::parse_date(
  tail(
    stringr::str_split(getwd(), pattern = "/")[[1]],
    n = 1
  ),
  format = "%Y%m%d")

min_date <- min(registrations_in_time$date)
max_n_registrations <- max(registrations_in_time$cumulative)

ggplot2::ggplot(
  registrations_in_time,
  ggplot2::aes(x = date, y = cumulative)
) + ggplot2::geom_line() + 
  ggplot2::scale_x_date(
    limits = c(min_date, course_date)
  ) +
  ggplot2::scale_y_continuous(
    limits = c(0, NA),
    name = "Number or registration at the end of that day"
  ) + 
  ggplot2::labs(
    title = "Number of course registrations in time",
    subtitle = paste0("Course date: ", course_date)
  ) 
  

ggplot2::ggsave("n_registrations_in_time.png", width = 7, height = 7)
