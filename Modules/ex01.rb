def to_capitalize(name, capitalize_it)
    puts capitalize_it.call(name)
end

name = "victor"
capitalize_it = -> (name) { name.capitalize }

to_capitalize(name, capitalize_it)

