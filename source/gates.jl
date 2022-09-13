"""NOT Gate
  
  ----

  Truth table
  | x | !x|
  |:-:|:-:|
  | 0 | 1 |
  | 1 | 0 |
"""
function NOT(x::BitVector)
  return .!x
end

"""AND Gate

  ----

  Truth table
  | x | y | y ∙ x |
  |:-:|:-:| :---: |
  | 0 | 0 |   0   |
  | 0 | 1 |   0   |
  | 1 | 0 |   0   |
  | 1 | 1 |   1   |
"""
function AND(x::BitVector, y::BitVector)
  return x .& y
end

"""OR Gate

  ----

  Truth table
  | x | y | y + x |
  |:-:|:-:| :---: |
  | 0 | 0 |   0   |
  | 0 | 1 |   1   |
  | 1 | 0 |   1   |
  | 1 | 1 |   1   |
"""
function OR(x::BitVector, y::BitVector)
  return x .| y
end

"""XOR Gate

  ---- 

  Truth table
  | x | y | y ⊕ x |
  |:-:|:-:| :---: |
  | 0 | 0 |   0   |
  | 0 | 1 |   1   |
  | 1 | 0 |   1   |
  | 1 | 1 |   0   |
"""
function XOR(x::BitVector, y::BitVector)
  return x .& .!y .| .!x .& y
end
