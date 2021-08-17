using Beep
using Test

@testset "Beep.jl" begin
    @testset "resources" begin
    end

    @testset "functions" begin
        @test beep(:boing) === nothing
        @test beep(:back) === nothing
    end
end
