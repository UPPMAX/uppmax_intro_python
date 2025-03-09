#!/bin/env Rscript
t <- tibble::tibble(
  path = list.files(
    pattern = "success_score.txt", 
    recursive = TRUE,
    full.names = TRUE
  ),
  date = NA,
  score = NA
)
t$date <- lubridate::as_date(stringr::str_sub(t$path, 3, 10))
t$score <- readr::read_lines(t$path)
t$score <- as.numeric(t$score)

ggplot2::ggplot(t, ggplot2::aes(x = date, y = score)) +
  ggplot2::geom_line() +
  ggplot2::geom_point() +
  ggplot2::scale_y_continuous(
    name = "Success score",
    limits = c(0, 1),
    labels = scales::percent
  ) + ggplot2::labs(
    title = "NAISS 'Introduction to Python'"
  )

ggplot2::ggsave("success_scores_in_time.png", width = 7, height = 7)
