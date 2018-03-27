# require 'mathn'
# prime_numbers = Prime.new

limit = 1_000_000
result = 0
count = 0

prime_numbers = Enumerator.new do |y|
  x = 1
  while true
    y.yield(x) if (1..x).select{ |y| x % y == 0 }.size == 2
    x += 1
  end
end

loop do 
  prime = prime_numbers.next

  break if (result + prime) > limit

  result += prime
  count += 1
end

puts "count: #{count}, result: #{result}"
