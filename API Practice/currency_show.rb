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
end

def interval(key, seconds)
    loop do
        puts "#{Time.now.strftime("%H:%M:%S")} => O valor de 1 dólar em reais é R$ #{get_quotation(key).round(2)}"
        sleep seconds
    end
end

interval(key, 1800)








