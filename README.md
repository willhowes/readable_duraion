# readable_duration

My Attempt at this code wars challenge using TDD:
https://www.codewars.com/kata/human-readable-duration-format/train/ruby


## Instructions

Your task in order to complete this Kata is to write a function which formats a
duration, given as a number of seconds, in a human-friendly way.

The function must accept a non-negative integer. If it is zero, it just returns
 "now". Otherwise, the duration is expressed as a combination of years,
  days, hours, minutes and seconds.

It is much easier to understand with an example:

format_duration(62)    # returns "1 minute and 2 seconds"
format_duration(3662)  # returns "1 hour, 1 minute and 2 seconds"
For the purpose of this Kata, a year is 365 days and a day is 24 hours.

Note that spaces are important.

Detailed rules
The resulting expression is made of components like 4 seconds, 1 year, etc.
In general, a positive integer and one of the valid units of time, separated
 by a space. The unit of time is used in plural if the integer is greater than 1.

The components are separated by a comma and a space (", ").
Except the last component, which is separated by " and ",
just like it would be written in English.

A more significant units of time will occur before than a least significant one.
Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.

Different components have different unit of times. So there is not repeated
units like in 5 seconds and 1 second.

A component will not appear at all if its value happens to be zero.
Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.

A unit of time must be used "as much as possible". It means that the function
should not return 61 seconds, but 1 minute and 1 second instead.
Formally, the duration specified by of a component must not be greater
than any valid more significant unit of time.

## Sample Tests
format_duration(1), "1 second"
format_duration(62), "1 minute and 2 seconds"
format_duration(120), "2 minutes"
format_duration(3600), "1 hour"
format_duration(3662), "1 hour, 1 minute and 2 seconds"
