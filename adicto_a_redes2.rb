#Desafío opcional - adicto a redes 2

=begin
Se pide crear el programa adictos_a_redes2.rb con un método llamado scan_addicts2 que
reciba un arreglo con los minutos de uso y como resultado entregue un nuevo arreglo cambiando
todas las medidas inferiores a 90 minutos como 'bien', entre 90 y 180 como 'mejorable' y todas las
mayores o iguales a 180 como 'mal'.
=end

def scan_addicts2(array)
    results = []
    n = array.count

    n.times do |i|
        if array[i] < 90
            results.push "bien"
        elsif array[i] >= 90 && array[i] < 180
            results.push "mejorable"
        else
            results.push "mal"
        end
    end
    return results
end

print scan_addicts2([120, 50, 600, 30, 90, 10, 200, 0, 500])