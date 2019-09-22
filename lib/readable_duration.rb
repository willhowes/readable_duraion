def readable_duration(seconds)
  return "#{seconds / 60} minute and #{seconds % 60} seconds" if seconds > 61
  return "#{seconds / 60} minute and #{seconds % 60} second" if seconds == 61
  return "#{seconds} second" if seconds == 1
  "#{seconds} seconds"
end
