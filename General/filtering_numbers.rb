require 'set'

file = File.open('../numeros.txt')

numbers = []

file.each do |line|
    clean_line = line.gsub(/\n/, '')
    numbers << clean_line.to_i
end

puts numbers.sort.to_set