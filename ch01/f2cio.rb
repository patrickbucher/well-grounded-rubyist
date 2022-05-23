input_file = 'temp.in'
output_file = 'temp.out'

puts "Reading Fahrenheit temperature value from data file..."
fahrenheit = File.read(input_file).to_i

celsius = (fahrenheit - 32) * 5 / 9
puts "Saving result to output file 'temp.out'"
fh = File.new(output_file, "w")
fh.puts(celsius)
fh.close
