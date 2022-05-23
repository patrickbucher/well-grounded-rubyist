input_file = 'temp.in'
output_file = 'temp.out'

puts "Reading Celsius temperature value from data file..."
celsius = File.read(input_file).to_i

fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
fh = File.new(output_file, "w")
fh.puts(fahrenheit)
fh.close
