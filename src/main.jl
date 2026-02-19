module NPuzzle

function main()
    println("Hello world")
end # main

end # module

if abspath(PROGRAM_FILE) == @__FILE__
    NPuzzle.main()
end # if

