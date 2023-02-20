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
    pp "Nome: #{country_info['name']['nativeName'].values.first['official']}
Moeda: #{country_info['currencies'].values.first['name']}
Capital: #{country_info['capital'][0]}
Região: #{country_info['subregion']}
Língua: #{country_info['languages'].values.first}
Área: #{country_info['area']}
População: #{country_info['population']}"
    
rescue => exception
    puts 'País não encontrado ou digitado incorretamente!'
end





