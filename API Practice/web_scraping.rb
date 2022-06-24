require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('google.com', 443)
https.use_ssl = true

response = https.get("/")


doc = Nokogiri::HTML(response.body)

item = doc.css('a')
puts item