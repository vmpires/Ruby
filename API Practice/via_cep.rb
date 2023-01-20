require 'net/http'
require 'json'

puts "Insert your postal code: "
cep = gets.chomp.strip.gsub('-','')

response = Net::HTTP.get('viacep.com.br', "/ws/#{cep}/json/")

cep_hash = JSON.parse(response)

puts "You live in #{cep_hash['logradouro']}, #{cep_hash['complemento']}
#{cep_hash['bairro']} - #{cep_hash['localidade']}/#{cep_hash['uf']}"