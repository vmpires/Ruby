require 'net/http'
require 'json'

https = Net::HTTP.new('reqres.in', 443)
https.use_ssl = true

response = https.get("/api/users")

# puts response.code
# puts response.message
body = JSON.parse(response.body)
puts response.code
puts response.message
puts body