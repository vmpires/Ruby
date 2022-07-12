require 'json'

json_file = File.open('../pessoa.txt')

jsoned_file = JSON.parse(json_file.read)

puts jsoned_file['nome']
puts jsoned_file['idade']