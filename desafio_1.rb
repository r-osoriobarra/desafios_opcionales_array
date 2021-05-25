#Desafio opcional - 1

a = [1, 9 ,2, 10, 3, 7, 4, 6]

# Utilizando map sumar uno a cada uno de los valores del array.
b = a.map do |e|
        e + 1
end

# Utilizando map convertir todos los valores a float.
b = a.map do |e|
        e.to_f
end

#  Utilizando select descartar todos los elementos menores a 5 en el array
b = a.select {|x| x >= 5}

# Utilizando inject sumar todos los valores del array.
b = a.inject(0) {|sum, x| sum += x}

# Utilizando .count contar todos los elementos menores que 5.
b = a.count {|x| x < 5}
