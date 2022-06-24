module Person
    class Physical
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end

        def add
            puts 'Pessoa física adicionada'
            puts "Nome: #{@name}"
            puts "CPF: #{@cpf}"
        end
    end

    class Juridic
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def add
            puts 'Pessoa jurídica adicionada'
            puts "Nome: #{@name}"
            puts "CNPJ: #{@cnpj}"
        end
    end
end

Person::Physical.new("Victor", "407.125.078-09").add
Person::Juridic.new("Victor Company LTDA","13.154.345/0001-02").add