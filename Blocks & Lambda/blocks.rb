def foo
    if block_given?
        yield
    else
        puts "No blocks given"
    end
end

foo