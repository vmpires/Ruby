def foo (names, first_lambda,second_lambda)
    first_lambda.call(names)
    second_lambda.call(names)
end

names = ["Victor", "Jaci", "Lore"]

first_lambda = -> (names) { names.each { |name| puts name } }
second_lambda = -> (names) { names.each { |name| puts name } }

foo(names, first_lambda, second_lambda)