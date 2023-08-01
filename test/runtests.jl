using VLChE5760Cornell
using Test

@testset "VLChE5760Cornell.jl" begin
    @test VLChE5760Cornell.hello() == "Hello, World!"
    @test VLChE5760Cornell.hello() != "Navin R Jonhson"
end
