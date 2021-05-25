#Desafio opcional - arreglo notas

=begin
Supongamos que tenemos un caso donde tenemos un arreglo de notas y queremos calcular el
promedio, pero dentro de este arreglo tenemos alumnos que no dieron la prueba y están marcados en
el arreglo como 'N.A', Como regla adicional cada N.A tendrá nota base 2.0.
Se pide crear el programa arreglo_notas.rb con el método promedio que devuelva el promedio de
un arreglo de notas con las características entregadas.
=end

def promedio(notas)
    qualifications = []
    n = notas.count
    sum = 0

    #reemplazando N.A por nota 2
    notas.each do |points|
        if points == 'N.A'
            qualifications.push 2
        else
            qualifications.push points
        end
    end

    #sumando las notas
    n.times do |i|
        sum += qualifications[i]
    end
    #promedio
    avg = sum / n
end

#llamando al método
notas = [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]
puts "El promedio de notas es #{promedio(notas)}."

