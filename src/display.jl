# Display utils

function print_grid(n::Int, grid::Vector{UInt8})
    @inbounds for i in 1:n
        base = (i-1)*n
        for j in 1:n
            v = grid[base + j]
            if j == 1
                print(v)
            else
                print(' ', v)
            end # if
        end # for
        println()
    end # for
end # print_grid
