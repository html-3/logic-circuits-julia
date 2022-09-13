include("gates.jl")

"""Half-Adder Component

  ----

  s = x ⊕ y

  c = x ∙ y

  ----

  | x | y | s | c |
  |:-:|:-:|:-:|:-:|
  | 0 | 0 | 0 | 0 |
  | 0 | 1 | 1 | 0 |
  | 1 | 0 | 1 | 0 |
  | 1 | 1 | 0 | 1 |
"""
function HADD(x::BitVector, y::BitVector)
  s = XOR(x,y)
  c = AND(x,y)
  return s, c
end

"""Full-Adder Component

  ----

  s = x ⊕ y ⊕ c_in

  c_out = x ∙ y + (x ⊕ y) ∙ c_in 
  
  ----

  | c_in | x | y | c_out | s |
  |:----:|:-:|:-:|:-----:|:-:|
  |  0   | 0 | 0 |   0   | 0 |
  |  0   | 0 | 1 |   0   | 1 |
  |  0   | 1 | 0 |   0   | 1 |
  |  0   | 1 | 1 |   1   | 0 |
  |  1   | 0 | 0 |   0   | 1 |
  |  1   | 0 | 1 |   1   | 0 |
  |  1   | 1 | 0 |   1   | 0 |
  |  1   | 1 | 1 |   1   | 1 |
"""
function ADD(x::BitVector, y::BitVector, c::BitVector)
  z = XOR(x,y)
  s = XOR(z,c)
  c = OR(AND(x,y),AND(z,c))
  return s, c
end