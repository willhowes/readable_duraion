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
  if array_for_printing.length > 1
    final_print = []
    array_for_printing.each_with_index do |unit_to_print, index|
      case index

      when array_for_printing.length - 2
        final_print << "#{unit_to_print} and "

      when array_for_printing.length - 1
        final_print << "#{unit_to_print}"

      else
        final_print << "#{unit_to_print}, "
      end
    end
    final_print.join('')
  else
    "#{array_for_printing[0]}"
  end
end
