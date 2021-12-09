forward = 0
up = 0
down = 0
depth = 0
aim = 0

File.readlines("day2-input", chomp: true).map(&:split).each do |direction, amount|
  aim += amount.to_i if direction == "down" 
  aim -= amount.to_i if direction == "up"
  if direction == "forward" 
    forward += amount.to_i
    depth += aim * amount.to_i
  end
end
p depth * forward