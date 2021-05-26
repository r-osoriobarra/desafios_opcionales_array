#Desafio opcional - 2

nombres = ['Violeta', 'Andino', 'Clemente','Javiera', 'Paula', 'Pía', 'Ray']

#Obtener todos los elementos que excedan los 5 caracteres, utilizando .select .
long_names = nombres.select {|e| e.length > 5}

#Utilizar .map para crear un arreglo con todos los nombres en minúscula.
downcase_names = nombres.map do |e|
                    e.downcase
                end

#Utilizar .select para crear un arreglo con todos los nombres que empiecen con P.
p_names = nombres.select {|e| /P/.match(e)}

#Utilizando .count , contar los elementos que empiecen con 'A', 'B' o 'C'.
abc_names = nombres.select {|e| /[A-C]/.match(e)}

#Utilizando .map , crear un arreglo único con la cantidad de letras que tiene cada nombre.
count_letters_names = nombres.map do |e|
                        e.length
                    end