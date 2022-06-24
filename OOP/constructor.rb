class Person
    def initialize(name,age)
        @name = name
        @age = age
    end
    
    def check
        puts "Instância de classe iniciada com os valores"
        puts "Name = #{@name}"
        puts "Idade = #{@age}"
    end

end

person = Person.new("Victor", "30")
person.check
puts Person.methods