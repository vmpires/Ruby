require 'net/http'

req = Net::HTTP::Post.new("/api/users")

req.set_form_data({ name: "Victor", job: "Dev" })

response = Net::HTTP.start('reqres.in', use_ssl: true) do |https|
    https.request(req)
end

puts response.code
puts response.body