require "cpf_cnpj"

def cpf_valid?(cpf)
    if not CPF.valid?(cpf)
        return "CPF inválido"
    end
    
    return "CPF válido!"
end

puts cpf_valid?("407.125.078-049")