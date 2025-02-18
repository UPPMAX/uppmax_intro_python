#!/bin/env Rscript
#
# Purpose: convert the Google doc with
# registrations and email addresses to a
# `date,n_registrations` format

t_all <- readr::read_csv("~/Downloads/responses.csv")
names(t_all) <- c("timestamp", "email")
t_all$timestamp <- readr::parse_datetime(t_all$timestamp, format = "%d/%m/%Y %H:%M:%S")
testthat::expect_s3_class(t_all$timestamp, c("POSIXct","POSIXt"))

t_all$email <- cli::hash_md5(t_all$email)

t <- t_all |> dplyr::distinct(email, .keep_all = TRUE)

readr::write_csv(t, "registrations.csv")

t$date <- stringr::str_split_fixed(t$timestamp, pattern = " ", n = 2)[, 1]

n_registrations <- t |> 
  dplyr::select_all() |>
  dplyr::group_by(date) |> 
  dplyr::count()

n_registrations$cumulative <- cumsum(n_registrations$n)

readr::write_csv(n_registrations, "n_registrations_in_time.csv")
