def readable_duration(seconds)
  no_of_seconds = seconds % 60
  no_of_minutes = seconds % 3600 / 60
  no_of_hours = seconds / 3600

  return print_seconds(no_of_seconds) if seconds < 60

  if no_of_hours > 0
    if no_of_minutes > 0
      "#{print_hours(no_of_hours)} and #{print_minutes(no_of_minutes)}"
    else
      "#{print_hours(no_of_hours)}"
    end
  else
    if no_of_seconds > 0
      "#{print_minutes(no_of_minutes)} and #{print_seconds(no_of_seconds)}"
    else
      "#{print_minutes(no_of_minutes)}"
    end
  end
end

private

def print_seconds(no_of_seconds)
  if no_of_seconds == 1
    "#{no_of_seconds} second"
  else
    "#{no_of_seconds} seconds"
  end
end

def print_minutes(no_of_minutes)
  if no_of_minutes == 1
    "#{no_of_minutes} minute"
  else
    "#{no_of_minutes} minutes"
  end
end

def print_hours(no_of_hours)
  if no_of_hours == 1
    "#{no_of_hours} hour"
  else
    "#{no_of_hours} hours"
  end
end
