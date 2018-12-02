input = File.readlines('./input.txt').map(&:chomp)

input.each do |l|
  input.each do |l2|
    if l.chars.zip(l2.chars).reject { |a, b| a == b }.count == 1
      puts l.chars.zip(l2.chars).select { |a, b| a == b }.transpose[0].join
      exit
    end
  end
end
