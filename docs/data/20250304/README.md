# 2025-03-04

## Registrations

As a learner, it can be assuring to know you have registered.
Here are the registrations we've received,
with an MD5 of the email address.

- Data: [registrations.csv](registrations.csv)
    - `timestamp`: the timestamp in `DD/MM/YYYY hh:mm:ss`
      format
    - `email`: the MD5 hash of the email address

## Number of registrations in time

- Data: [n_registrations_in_time.csv](n_registrations_in_time.csv)
- Code: [plot_n_registrations_in_time.R](plot_n_registrations_in_time.R)
    - `date`: the date, in `DD/MM/YYYY` format
    - `n`: the amount of registrations at that day
    - `cumulative`: the total amount of registrations
      at the end of that day

![Number of registrations in time and predictions](n_registrations_in_time_and_predictions.png)


## Number of learners present in time

- Data: [20250304_counts.csv](20250304_counts.csv)
- Code: [analyse_counts.R](analyse_counts.R)

![Number of learners in time](n_learners_in_time.png)
