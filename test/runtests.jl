using BuildCLI

using Test

@testset "BuildCLI.jl" begin
    # Write your tests here.
    function add_tow(x, y::Integer=2)
        return x + y + 2
    end
    @test BuildCLI.runcli(add_tow) == Dict(:y => Integer, :x => Any)

    fw(a, b) = a^b
    @test BuildCLI.runcli(fw) == Dict(:a => Any, :b => Any)

end
