puts "What is the source file?"
source_file = gets.chomp

puts "What would you like to name your new destination file?"
destination_file = gets.chomp

puts "You chose #{destination_file}"
source_file_contents = IO.read(source_file)
IO.write(destination_file, source_file_contents)  
