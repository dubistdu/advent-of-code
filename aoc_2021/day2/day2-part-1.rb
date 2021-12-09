forward = 0
up = 0
down = 0
File.readlines("day2-input", chomp: true).map(&:split).each do |direction, amount|
  forward += amount.to_i if direction == "forward"
  up += amount.to_i * -1 if direction == "up"
  down += amount.to_i if direction == "down"
end
p forward * (up + down)