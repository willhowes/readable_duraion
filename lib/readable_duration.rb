def readable_duration(seconds)
  remaining_seconds = seconds % 60
  no_of_minutes = seconds / 60
  
  return handle_seconds(remaining_seconds) if less_than_minute?(seconds)
  "#{no_of_minutes} minute and #{handle_seconds(remaining_seconds)}"
end

private

def less_than_minute?(seconds)
  return true if seconds < 60
  false
end

def handle_seconds(remaining_seconds)
  return "#{remaining_seconds} second" if remaining_seconds == 1
  "#{remaining_seconds} seconds"
end
