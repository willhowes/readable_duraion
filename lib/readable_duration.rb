def readable_duration(seconds)
  return "#{seconds} second" if seconds == 1
  "#{seconds} seconds"
end
