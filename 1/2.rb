input = File.readlines('./input.txt').map(&:to_i)

frequency = 0
frequencies = {}

input.cycle do |f|
  frequency += f
  break if frequencies.key? frequency
  frequencies[frequency] = nil
end

puts frequency
