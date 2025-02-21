#!/bin/env Rscript

#' Get the predictions of the cumulative amount of registrations
#' in time.
#' @param registrations_in_time a tibble with a `date` and `cumulative` 
#' @param course_date the (future) course date
#' @return a tibble with a `date` and `cumulative`,
#' where `date` goes from first registration day to `course_date`
#' and `cumulative` holds the predicted amount of cumulative
#' registrations
get_predictions <- function(registrations_in_time, course_date) {
  testthat::expect_true("cumulative" %in% names(registrations_in_time))
  testthat::expect_true("date" %in% names(registrations_in_time))

  t <- registrations_in_time
  y <- t$cumulative
  x <- as.double(t$date - min(t$date))
  x_max <- as.double(course_date - min(t$date))
  log.ss <- nls(y ~ SSlogis(x, phi1, phi2, phi3))
  
  #C: expect amount of registrations
  C <- summary(log.ss)$coef[1]
  #a
  A <- exp((summary(log.ss)$coef[2]) * (1/summary(log.ss)$coef[3]))
  #k
  K <- (1 / summary(log.ss)$coef[3])
  
  
  x <- seq(0, x_max)
  ys_pred <- predict(log.ss, data.frame(x=0:x_max))
  testthat::expect_equal(length(x), length(ys_pred))
  dates <- x + min(t$date)
  tibble::tibble(
    date = dates,
    cumulative = ys_pred
  )
}

if (1 == 2) {
  readr::read_lines("n_registrations_in_time.csv")
}
if (1 == 2) {
  format <- "%d/%m/%Y"
}
format <- "%Y-%m-%d"

registrations_in_time <- readr::read_csv(
  file = "n_registrations_in_time.csv",
  col_types = readr::cols(
    date = readr::col_date(format = format),
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

# Add today
registrations_in_time <- registrations_in_time |> tibble::add_row(
  date = lubridate::today(), n = 0, cumulative = max(registrations_in_time$cumulative)
)

course_date <- readr::parse_date(
  tail(
    stringr::str_split(getwd(), pattern = "/")[[1]],
    n = 1
  ),
  format = "%Y%m%d")

min_date <- min(registrations_in_time$date)
max_n_registrations <- max(registrations_in_time$cumulative)

p <- ggplot2::ggplot(
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
p  

ggplot2::ggsave("n_registrations_in_time.png", width = 7, height = 7)

t_predictions <- get_predictions(registrations_in_time, course_date = course_date)
n_learners_predicted <- round(max(t_predictions$cumulative))
p + ggplot2::geom_line(
  data = t_predictions,
  ggplot2::aes(x = date, y = cumulative),
  color = "red"
) + ggplot2::labs(caption = paste0("Number of registrations predicted: ", n_learners_predicted))

ggplot2::ggsave("n_registrations_in_time_and_predictions.png", width = 7, height = 7)

if (1 == 2) {
  t <- registrations_in_time
  fit <- lm(cumulative ~ date, data = t)
  x_axis <- t$date
  plot(t$date, t$cumulative)
  lines(x_axis, predict(fit))
}

if (1 == 2) {
  ind <- "date"
  dep <- "cumulative"
  t <- registrations_in_time
  y <- t$cumulative
  x <- as.double(t$date - min(t$date))
  x_max <- as.double(course_date - min(t$date))
  log.ss <- nls(y ~ SSlogis(x, phi1, phi2, phi3))
  
  #C: expect amount of registrations
  C <- summary(log.ss)$coef[1]
  #a
  A <- exp((summary(log.ss)$coef[2]) * (1/summary(log.ss)$coef[3]))
  #k
  K <- (1 / summary(log.ss)$coef[3])

  png("n_registrations_in_time_and_predictions.png")  
  plot(
    y ~ x, 
    main = "Expected amount of registrations", 
    xlab = ind, 
    ylab = dep, 
    xlim = c(0, x_max),
    ylim = c(0, C)
  )
  lines(0:x_max, predict(log.ss, data.frame(x=0:x_max)), col="red")
  mtext(paste0("Expected amount: ", round(C)))
  dev.off()  
}
