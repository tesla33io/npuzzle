module NPuzzle
using Random
import Dates

# Creates a grid representing a random state
# 0x00 represents the empty tile
function create_grid(N::UInt8)::Vector{UInt8}
    grid::Vector{UInt8} = randperm(15)
    empty_idx::UInt8 = rand(1:15)
    insert!(grid, empty_idx, 0)
    return grid
end # create_grid

function main()
    for i = 1:10
        grid::Vector{UInt8} = create_grid(UInt8(16))
        println(length(grid))
        println(grid)
        sleep(1)
    end # for
end # main

end # module

if abspath(PROGRAM_FILE) == @__FILE__
    NPuzzle.main()
end # if

