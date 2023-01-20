require 'net/http'
require 'json'

file = File.read('../keys.json')
key = JSON.parse(file)

def get_quotation(key)
    host = "api.hgbrasil.com"
    endpoint = "/finance/quotations?key=#{key["hg_brasil"]}"
    response = Net::HTTP.get(host, endpoint)
    
    quotations = JSON.parse(response)
    dollar_buying_price = quotations["results"]["currencies"]["USD"]["buy"]
    puts "O valor de 1 dólar em reais é R$ #{dollar_buying_price.round(2)}"
end

def interval(key, seconds)
    loop do
        get_quotation(key)
        sleep seconds
    end
end

interval(key, 2)








