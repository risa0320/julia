
"return 'x+1' with probability 'p' or 'x-1' with '1-p'."
function update(x::Real, p::Real = 0.5)
  ifelse(rand() < p, x+one(x),  x-one(x))
end

function randomwalk(nsteps::Integer, prob::Real = 0.5)
  result = zeros(Int, nsteps+1)
  x = 0
  for t in 1:nsteps
    x = update(x, prob)
    result[t+1] = x
  end
  return result
end

nsteps = length(ARGS) >0 ? Int64(ARGS[1]) : 1000
prob = length(ARGS) >1 ? Float64(ARGS[2]) : 0.5
result = randomwalk(nsteps, prob)
for (t, x) in enumerate(result)
    println("$(t - 1) $x")
end

