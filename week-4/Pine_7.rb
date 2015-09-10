# Solution 1
counter = 1

while counter < 100
  puts counter.to_s + " bottles of beer on the wall"
  counter += 1
end
=end

#Solution 2
puts "Hello, grand-daughter. How are you?"
reply = gets.chomp

while reply != reply.upcase
  puts "SPEAK UP!"
  reply = gets.chomp
  if reply == reply.upcase
    puts "NO. NOT SINCE 1932."
    reply == gets.chomp
  elsif reply == "BYE"
  end
end
=end

# Solution 3
puts "Tell me a year."
year_first = gets.chomp.to_i
puts "Tell me later year."
year_last = gets.chomp.to_i

while year_first <= year_last
  puts year_first
  year_first += 1
end






