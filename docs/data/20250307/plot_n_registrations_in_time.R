#!/bin/env Rscript

course_date <- tail(stringr::str_split(getwd(), pattern = "/")[[1]], n = 1)

registrations_in_time <- readr::read_csv(
  "n_registrations_in_time.csv",
  show_col_types = FALSE
)

testthat::expect_true("n_registrations" %in% names(registrations_in_time))
testthat::expect_true("date" %in% names(registrations_in_time))

max_n_registrations <- max(registrations_in_time$n_registrations)

ggplot2::ggplot(
  registrations_in_time,
  ggplot2::aes(x = date, y = n_registrations)
) + ggplot2::geom_line() + 
  ggplot2::scale_y_continuous(
    limits = c(0, max_n_registrations),
    breaks = seq(0, max_n_registrations),
    name = "Number or registration at the end of that day"
  ) +
  ggplot2::labs(
    title = "Number of course registrations in time",
    subtitle = paste0("Course date: ", course_date)
    
  )

ggplot2::ggsave("n_registrations_in_time.png", width = 7, height = 7)
