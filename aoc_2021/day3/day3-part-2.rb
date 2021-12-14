report = File.readlines("day3-input", chomp: true)

def rating(report, &block)
  current_report = report

  index = 0
  while current_report.length > 1
    current_bits = current_report.map(&:chars).transpose[index]
    bit_to_select = yield current_bits # current_bits.count("1") >= current_bits.count("0") ? bit_to_select_if_there_are_more_ones : bit_to_select_if_there_are_more_zeros
    current_report = current_report.select {|a| a[index]==(bit_to_select)}
    index += 1
  end
  current_report.first.to_i(2)
end

def oxygen_generator_rating(report)
  rating(report) { |current_bits| current_bits.count("1") >= current_bits.count("0") ? "1" : "0" }
end

def co2_scrubber_rating(report)
  rating(report) { |current_bits| current_bits.count("1") >= current_bits.count("0") ? "0" : "1" }
end


p life_support_rating = oxygen_generator_rating(report) * co2_scrubber_rating(report)
