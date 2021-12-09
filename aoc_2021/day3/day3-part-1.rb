gamma_rate = []
epsilon_rate = []
read_input = File.readlines("day3-input", chomp: true)
half_of_input_length = read_input.length/2
read_input.map(&:chars).transpose.each do |a|
  a.count("0") >  half_of_input_length ? gamma_rate.push("0") : gamma_rate.push("1")
  a.count("0") <  half_of_input_length ? epsilon_rate.push("0") : epsilon_rate.push("1")
 end
 gamma_rate.join.to_i(2) * epsilon_rate.join.to_i(2)