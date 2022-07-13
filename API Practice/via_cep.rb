require 'rest-client'
require 'json'

puts "Insert your postal code: "
cep = gets.chomp.strip.gsub('-','')

url = "https://viacep.com.br/ws/#{cep}/json/"

response = RestClient.get(url, headers={})

cep_hash = JSON.parse(response.body)

puts "You live in #{cep_hash['logradouro']}, #{cep_hash['complemento']}
#{cep_hash['bairro']} - #{cep_hash['localidade']}/#{cep_hash['uf']}"