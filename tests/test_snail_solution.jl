using Test
include("../src/main.jl")
using .NPuzzle

@testset "Basic cases 2 <= N <= 4" begin
    N::Int = 2
    expected::Vector{Int} = [1, 2,
                             0, 3]
    result::Vector{Int} = create_final_solution(N)
    @test result == expected


    N = 3
    expected = [1, 2, 3,
                8, 0, 4,
                7, 6, 5]
    result = create_final_solution(N)
    @test result == expected


    N = 4
    expected = [1, 2, 3, 4,
                12,13,14, 5,
                11, 0,15, 6,
                10, 9, 8, 7]
    result = create_final_solution(N)
    @test result == expected
end # Basic


@testset "Edge cases N = {0, 1}" begin
    N::Int = 1
    expected::Vector{Int} = [0]
    result::Vector{Int} = create_final_solution(N)

    @test result == expected


    N = 0
    expected = []
    result = create_final_solution(N)

    @test result == expected
end # Edge

@testset "Big N = {12, 13}" begin
    N::Int = 12
    expected::Vector{Int} = [
                             1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12,
                             44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 13,
                             43, 80, 81, 82, 83, 84, 85, 86, 87, 88, 55, 14,
                             42, 79,108,109,110,111,112,113,114, 89, 56, 15,
                             41, 78,107,128,129,130,131,132,115, 90, 57, 16,
                             40, 77,106,127,140,141,142,133,116, 91, 58, 17,
                             39, 76,105,126,139,  0,143,134,117, 92, 59, 18,
                             38, 75,104,125,138,137,136,135,118, 93, 60, 19,
                             37, 74,103,124,123,122,121,120,119, 94, 61, 20,
                             36, 73,102,101,100, 99, 98, 97, 96, 95, 62, 21,
                             35, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 22,
                             34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23
                            ]
    result::Vector{Int} = create_final_solution(N)
    @test result == expected


    N = 13
    expected = [
                1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13,
                48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 14,
                47, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 60, 15,
                46, 87,120,121,122,123,124,125,126,127, 98, 61, 16,
                45, 86,119,144,145,146,147,148,149,128, 99, 62, 17,
                44, 85,118,143,160,161,162,163,150,129,100, 63, 18,
                43, 84,117,142,159,168,  0,164,151,130,101, 64, 19,
                42, 83,116,141,158,167,166,165,152,131,102, 65, 20,
                41, 82,115,140,157,156,155,154,153,132,103, 66, 21,
                40, 81,114,139,138,137,136,135,134,133,104, 67, 22,
                39, 80,113,112,111,110,109,108,107,106,105, 68, 23,
                38, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 24,
                37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25
               ]
    result = create_final_solution(N)
    @test result == expected
end
