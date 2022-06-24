puts "Digite sua mensagem com número de telefone:"

mensagem = gets.chomp

numero = /\([0-9]{2}\)\s[0-9]{5}-[0-9]{4}/.match(mensagem)

puts "Seu número de telefone é #{numero}"

# "Olá, tudo bem? Meu WhatsApp é (99) 74321-1234"