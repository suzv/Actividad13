h = {x: 1, y:2}
h[:z]= 3
h[:x]= 5
h.delete(:y)
puts h

h.each do |x,y|
  puts ' yeaah' if x == :z
end


puts h.invert
