gamma_rate = ''
epsilon_rate = ''
read_input = File.readlines("day3-input", chomp: true)
half_of_input_length = read_input.length/2
read_input.map(&:chars).transpose.each do |a|
  a.count("0") >  half_of_input_length ? gamma_rate << ("0") && epsilon_rate << ("1") : gamma_rate << ("1") && epsilon_rate << ("0")
 end
 gamma_rate.to_i(2) * epsilon_rate.to_i(2)