report = File.readlines("day3-input", chomp: true)

current_report = report
oxygen_generator_rating = (0..).each do |index|
    current_bits = current_report.map(&:chars).transpose[index]
    bit_to_select = current_bits.count("1") >= current_bits.count("0") ? "1" : "0"
    current_report = current_report.select { |a| a[index] == bit_to_select }
  
    break current_report.first.to_i(2) if current_report.length == 1
  end

  current_report = report
co2_scrubber_rating = (0..).each do |index|
    current_bits = current_report.map(&:chars).transpose[index]
    bit_to_select = current_bits.count("1") >= current_bits.count("0") ? "0" : "1"
    current_report = current_report.select { |a| a[index] == bit_to_select }
  
    break current_report.first.to_i(2) if current_report.length == 1
  end  

  p life_support_rating = oxygen_generator_rating * co2_scrubber_rating