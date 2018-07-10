
personas = ["Carolina", "Alejandro", "Maria Jesus", "Valentin"]
edades = [32, 28, 41, 19]

nuevo_hash =  Hash[personas.zip(edades)]

c = Array.new
c = nuevo_hash
c = nuevo_hash.to_h
puts c




def prom(x)
 puts x.each_value.inject(0){ |sum, v| sum += v} / x.size
end
 print prom(c)
