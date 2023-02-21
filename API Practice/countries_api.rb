require 'net/http'
require 'json'

def get_country(country)
    https = Net::HTTP.new('restcountries.com', 443)
    https.use_ssl = true
    response = https.get("/v3.1/name/#{country}")
    
    country_info = JSON.parse(response.body)
    country_info[0]
end

puts 'Insira o país desejado: '
country = gets.chomp

begin
    country_info = get_country(country)
    puts "Nome: #{country_info['name']['nativeName'].values.first['official']}"
    puts "Moeda: #{country_info['currencies'].values.first['name']}"
    puts "Capital: #{country_info['capital'][0]}"
    puts "Região: #{country_info['subregion']}"
    puts "Língua: #{country_info['languages'].values.first}"
    puts "Área: #{country_info['area']}"
    puts "População: #{country_info['population']}"
    
rescue => exception
    puts 'País não encontrado ou digitado incorretamente!'
end





