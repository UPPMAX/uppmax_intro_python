#!/bin/env RStudio
#
# Purpose: convert the Google doc with
# registrations and email addresses to a
# `date,n_registrations` format

t <- readr::read_csv("~/Downloads/Intro to Python 2025-03-07 (Responses) - Form responses 1.csv")
names(t) <- c("timestamp", "email")

# Do by hand, this is too much work :-)

