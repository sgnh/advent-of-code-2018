input = File.readlines('./input.txt').map(&:chomp)

c1 = 0
c2 = 0

input.each do |l|
  count = l.chars.map { |c| Hash[c, 1] }
           .reduce { |o, n| o.merge(n) { |_k, a, b| a + b } }

  c1 += 1 if count.value? 2
  c2 += 1 if count.value? 3
end

puts c1 * c2
