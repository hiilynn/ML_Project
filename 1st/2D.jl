mutable struct Coordinate
  X::Float64
  Y::Float64
end

function Translation1(C::Coordinate)
  C.X += 1
  C.Y += 1
end

function Rotation90(C::Coordinate)
  (C.X, C.Y) = (-C.Y, C.X)
end

function add(C1::Coordinate, C2::Coordinate)
  C = Coordinate(C1.X + C2.X, C1.Y + C2.Y)
  return C
end
