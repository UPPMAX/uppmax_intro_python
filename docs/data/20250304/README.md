# 2025-03-07

## Registrations

As a learner, it can be assuring to know you have registered.
Here are the registrations we've received,
with an MD5 of the email address.

- Data: [registrations.csv](registrations.csv)
    - `timestamp`: the timestamp in `DD/MM/YYYY hh:mm:ss`
      format
    - `email`: the MD5 hash of the email address

???- question "How to check if I've registered?"

    - Get the MD5 hash of your email address.
      For example, using
      [this website](https://www.md5hashgenerator.com/).
      the email `john.doe@gmail.com` gives the MD5 hash of
      `e13743a7f1db7f4246badd6fd6ff54ff`.
      This MD5 hash is not found in the table of registrations,
      hence, that email address did not register

## Number of registrations in time

- Data: [n_registrations_in_time.csv](n_registrations_in_time.csv)
- Code: [plot_n_registrations_in_time.R](plot_n_registrations_in_time.R)
    - `date`: the date, in `DD/MM/YYYY` format
    - `n`: the amount of registrations at that day
    - `cumulative`: the total amount of registrations
      at the end of that day

![Number of registrations in time](n_registrations_in_time.png)

