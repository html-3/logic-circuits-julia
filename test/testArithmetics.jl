using Test

include("../source/arithmetics.jl")

using Main

@testset "Arithmetic tests" begin
  a = BitArray([0])
  b = BitArray([1])

  @test HADD(a,a) == (a,a)
  @test HADD(a,b) == (b,a)
  @test HADD(b,a) == (b,a)
  @test HADD(b,b) == (a,b)

  @test ADD(a,a,a) == (a,a)
  @test ADD(a,a,b) == (b,a)
  @test ADD(a,b,a) == (b,a)
  @test ADD(a,b,b) == (a,b)
  @test ADD(b,a,a) == (b,a)
  @test ADD(b,a,b) == (a,b)
  @test ADD(b,b,a) == (a,b)
  @test ADD(b,b,b) == (b,b)

end