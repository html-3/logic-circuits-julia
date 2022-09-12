# Gate NOT
"""
  Truth table
  | x | !x|
  |:-:|:-:|
  | 0 | 1 |
  | 1 | 0 |
"""
function NOT(x::BitVector)
  return .!x
end

# Gate AND
"""
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

# Gate OR
"""
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

# Gate XOR
"""
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
