# Display utils

const PADDING::Int = 3

function print_grid(n::Int, grid::Vector{Int})
    @inbounds for i in 1:n
        base = (i-1)*n
        for j in 1:n
            v = grid[base + j]
            if j == 1
                print(lpad(v, PADDING, " "))
            else
                print(' ', lpad(v, PADDING, " "))
            end # if
        end # for
        println()
    end # for
end # print_grid
