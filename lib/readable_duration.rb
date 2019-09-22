YEAR_SECONDS = 31536000
DAY_SECONDS = 86400
HOUR_SECONDS = 3600
MINUTE_SECONDS = 60

def readable_duration(seconds)
  array_for_printing = [print_unit(seconds / YEAR_SECONDS, "year"),
                        print_unit(seconds % YEAR_SECONDS / DAY_SECONDS, "day"),
                        print_unit(seconds % DAY_SECONDS / HOUR_SECONDS, "hour"),
                        print_unit(seconds % HOUR_SECONDS / MINUTE_SECONDS, "minute"),
                        print_unit(seconds % HOUR_SECONDS % MINUTE_SECONDS % MINUTE_SECONDS, "second")]
  array_for_printing.reject!(&:empty?)
  return handle_printing(array_for_printing)
end

private

def print_unit(no_of_units, unit_type)
  if no_of_units == 1
    "#{no_of_units} #{unit_type}"
  elsif no_of_units > 1
    "#{no_of_units} #{unit_type}s"
  else
    ""
  end
end

def handle_printing(array_for_printing)
  case array_for_printing.length

  when 4
    "#{array_for_printing[0]}, #{array_for_printing[1]}, "\
    "#{array_for_printing[2]} and #{array_for_printing[3]}"
  when 3
    "#{array_for_printing[0]}, #{array_for_printing[1]} and #{array_for_printing[2]}"
  when 2
    "#{array_for_printing[0]} and #{array_for_printing[1]}"
  when 1
    "#{array_for_printing[0]}"
  end
end
