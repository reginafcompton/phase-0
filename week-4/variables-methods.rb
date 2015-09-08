puts 'Tell me. Your first name?'
first_name = gets.chomp

puts 'And. Your middle name?'
middle_name = gets.chomp

puts 'Lastly. Your last name?'
last_name = gets.chomp

puts 'So, your full name is ' + first_name + middle_name + last_name + ', right?'


puts 'What is your favorite number?'
num = gets.chomp

puts 'Do you not prefer ' + (num.to_i + 5).to_s + ', instead?'