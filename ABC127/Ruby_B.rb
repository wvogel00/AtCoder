vs = gets.to_s.split.map(&:to_i)

value = vs[2]
for i in 1..10 do
    print (vs[0]*value-vs[1]).to_s
    print(" ")
    value = vs[0]*value-vs[1]
end
puts("")