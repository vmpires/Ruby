puts '--Lista de compras--'

file = File.open('shoplist.txt')

file.each do |line|
    puts line
end