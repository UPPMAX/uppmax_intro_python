#!/bin/env Rscript

registrations_in_time <- readr::read_csv(
  "n_registrations_in_time.csv",
  show_col_types = FALSE
)

ggplot2::ggplot(
  registrations_in_time,
  ggplot2::aes(x = date, y = n_registrations)
) + ggplot2::geom_line() + 
  ggplot2::scale_y_continuous(limits = c(0, NA))

ggplot2::ggsave("n_registrations_in_time.png", width = 7, height = 7)
