def readable_duration(seconds)
  remaining_seconds = seconds % 60
  no_of_minutes = seconds / 60
  no_of_hours = seconds / 3600

  return handle_seconds(remaining_seconds) if seconds < 60

  return handle_hours(no_of_hours) if seconds >= 3600

  if remaining_seconds > 0
    "#{handle_minutes(no_of_minutes)} and #{handle_seconds(remaining_seconds)}"
  else
    "#{handle_minutes(no_of_minutes)}"
  end
end

private

def handle_seconds(remaining_seconds)
  if remaining_seconds == 1
    "#{remaining_seconds} second"
  else
    "#{remaining_seconds} seconds"
  end
end

def handle_minutes(no_of_minutes)
  if no_of_minutes == 1
    "#{no_of_minutes} minute"
  else
    "#{no_of_minutes} minutes"
  end
end

def handle_hours(no_of_hours)
  if no_of_hours == 1
    "#{no_of_hours} hour"
  else
    "#{no_of_hours} hours"
  end
end
