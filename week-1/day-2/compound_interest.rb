def compound_interest
  print "Ingresar monto depositado: "
  monto = Float(gets.chomp)
  print "Ingresar tasa de interes (%): "
  interes = Float(gets.chomp)
  print "Ingresar numero de periodos : "
  periodos = Integer(gets.chomp)
  i = 1
  while i<= periodos
    monto *= 1+interes/100
    i+=1
  end
  puts "%0.2f" % [monto]
end

compound_interest()