#=============================#

# This is a 1 column Vector

mutable struct Vec1D
  comp::Array{Float64,1}
end

#=============================#

# in general

mutable struct Vec
  components::Array{Float64}
end

#=============================#

# the name "length" can't use since length is already built-in. 
# first alternative way is:

function len(V::Vec)
  return len(V.components)
end

#=============================#

# second is:

function Base.:length(A::Vec)
  return length(A.components)
end

function Base.:+(A::Vec, B::Vec)
  return A.components + B.components 
end

function Base.:-(A::Vec, B::Vec)
  return A.components - B.components
end

function Base.:transpose(A::Vec)
  return transpose(A.components)
end

function Base.:*(A::Vec, B::Vec)::Vec
  a = Vec(A.components)
  for i = 1:length(a)
    a.components[i] = A.components[i] * B.components[i]
  end
  return a
end

function inProd(A::Vec, B::Vec)
  return transpose(A.components) * B.components
end

A = Vec([1, 2, 3])
B = Vec([2 4 6; 6 7 8])
C = Vec([2 4 5; 6 8 9; 1 3 5])

