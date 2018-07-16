# Weight initialization
function weight_init(m,n)
  w = 2*rand((m,n)) -1
  return w
end

# Activation 
function activation(s)
  if s>0
    return 1
  else
    return 0
  end
end

# Output
function output(weights, input)
  s = input*weights
  y = map(x-> activation(x), s)
  return y
end

# Update Weight
function update(weights, input, answer, eta)
  return weights - eta*(transpose(input)*(output(weights, input) - answer))
end

# Training
function train(weights, input, answer, times, eta)
  w = weights
  for i in 1:(times-1)
    w = update(w, input, answer, eta)
    println(w)
  end
  return output(w, input)
end

w = weight_init(3,1)
x = [-1 0 0; -1 1 0; -1 0 1; -1 1 1]
t = [0; 1; 1; 1]

times = readline(STDIN)
times2 = parse(Int,chomp(times))
y = train(w, x, t, times2, 0.25)
println(y)
