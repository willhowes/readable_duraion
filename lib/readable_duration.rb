def readable_duration(seconds)
  array_for_printing = [print_hours(seconds / 3600),
                        print_minutes(seconds % 3600 / 60),
                        print_seconds(seconds % 3600 % 60 % 60)]
  array_for_printing.reject!(&:empty?)
  return handle_printing(array_for_printing)
end

private

def print_seconds(no_of_seconds)
  if no_of_seconds == 1
    "#{no_of_seconds} second"
  elsif no_of_seconds > 1
    "#{no_of_seconds} seconds"
  else
    ""
  end
end

def print_minutes(no_of_minutes)
  if no_of_minutes == 1
    "#{no_of_minutes} minute"
  elsif no_of_minutes > 1
    "#{no_of_minutes} minutes"
  else
    ""
  end
end

def print_hours(no_of_hours)
  if no_of_hours == 1
    "#{no_of_hours} hour"
  elsif no_of_hours > 1
    "#{no_of_hours} hours"
  else
    ""
  end
end

def handle_printing(array_for_printing)
  case array_for_printing.length
  when 3
    "#{array_for_printing[0]}, #{array_for_printing[1]} and #{array_for_printing[2]}"
  when 2
    "#{array_for_printing[0]} and #{array_for_printing[1]}"
  when 1
    "#{array_for_printing[0]}"
  end
end
