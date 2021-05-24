#Desafío opcional - Aumento de precios

=begin
Crear el programa aumento_precios.rb.
Dentro del programa crear un método llamado augment que recibe un arreglo y un multiplicador, y
que como resultado de un arreglo con todos los valores aumentados.
=end

def augment(array, multiplicator)
    new_prices = []

    array.each do |prices|
        new_prices << prices * multiplicator
    end
    return new_prices
end

original_prices = [100, 200, 5400, 8000, 2398, 9494, 20, 1200]
multi = 2

print augment(original_prices, multi)