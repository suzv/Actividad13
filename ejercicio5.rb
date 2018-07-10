meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

todo = Hash[meses.zip(ventas)]

b = todo.invert

c = Array.new
c = b
c = b.to_h
puts c



  def max(x)
    x.max_by{|k, v| k}
  end

  print max(c)
