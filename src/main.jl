module NPuzzle
using Random
using Dates

export create_final_solution

include("display.jl")

# Creates a grid representing a random state
# 0x00 represents the empty tile
function create_grid(N::Int)::Vector{Int}
    grid::Vector{Int} = randperm(15)
    empty_idx::Int = rand(1:15)
    insert!(grid, empty_idx, 0)
    return grid
end # create_grid


# Create a grid that represents the final "snail solution" for a given N
function create_final_solution(N::Int)::Vector{Int}
    solution::Vector{Int} = zeros(Int, N*N)
    top::Int = 1
    bottom::Int = N
    left::Int = 1
    right::Int = N

    counter::Int = 1
    while top <= bottom && left <= right
        for ir = left:right
            solution[(top - 1) * N + ir] = counter
            counter += 1
        end # for ir
        top += 1

        for ib = top:bottom
            solution[(ib - 1) * N + right] = counter
            counter += 1
        end # for ib
        right -= 1

        if top <= bottom
            for il = right:-1:left
                solution[(bottom - 1) * N + il] = counter
                counter += 1
            end # for il
            bottom -= 1
        end # if top <= bottom

        if left <= right
            for it = bottom:-1:top
                solution[(it - 1) * N + left] = counter
                counter += 1
            end # for it
            left += 1
        end # if left <= right
    end # while
    solution[solution .== N*N] .= 0

    return solution
end # create_final_solution

const N::Int = 13

function main()
    #grid::Vector{Int} = create_grid(Int(16))
    grid::Vector{Int} = create_final_solution(N)
    print_grid(N, grid)
end # main

end # module

if abspath(PROGRAM_FILE) == @__FILE__
    NPuzzle.main()
end # if
