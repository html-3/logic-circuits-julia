using Test

include("../source/gates.jl")

using Main

@testset "Gate tests" begin
  a = BitArray([0])
  b = BitArray([1])

  @test NOT(a) == b
  @test NOT(b) == a
  
  @test AND(a,a) == a
  @test AND(a,b) == a
  @test AND(b,a) == a
  @test AND(b,b) == b

  @test OR(a,a) == a
  @test OR(a,b) == b
  @test OR(b,a) == b
  @test OR(b,b) == b

  @test XOR(a,a) == a
  @test XOR(a,b) == b
  @test XOR(b,a) == b
  @test XOR(b,b) == a

end