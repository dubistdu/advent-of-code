report = File.readlines("day3-input", chomp: true)

  most_common_value_report = report
  least_common_value_report = report

  index = 0
  while most_common_value_report.length > 1
    current_bits = most_common_value_report.map(&:chars).transpose[index]
    more_common_bit = current_bits.count("1") >= current_bits.count("0") ? "1" : "0"
    most_common_value_report = most_common_value_report.select {|a| a[index]==(more_common_bit)}
    index += 1
  end
  oxygen_generator_rating = most_common_value_report.first.to_i(2)
  
  index = 0
  while least_common_value_report.length > 1
    current_bits = least_common_value_report.map(&:chars).transpose[index]
    least_common_bit = current_bits.count("0") <= current_bits.count("1") ? "0" : "1"
    least_common_value_report = least_common_value_report.select {|a| a[index]==(least_common_bit)}
    index += 1
  end

  co2_scrubber_rating = least_common_value_report.first.to_i(2)

  p life_support_rating = oxygen_generator_rating * co2_scrubber_rating 
