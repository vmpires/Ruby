class Dog
    attr_accessor :name, :age
end

dog = Dog.new
dog.name = "Luke"
dog.age = 4

puts "Meu cachorro se chama #{dog.name} e tem #{dog.age} anos."