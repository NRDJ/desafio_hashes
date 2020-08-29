ventas= {
    Enero:15000,
    Febrero:22000,
    Marzo:12000,
    Abril:17000,
    Mayo:81000,
    Junio:13000,
    Julio:20000,
    Agosto:41200,
    Septiembre:25000,
    Octubre:21500,
    Noviembre:91000,
    Diciembre:21000
}

input = ARGV[0..]
input = input.map {|item| item.to_i}

arr = []
ventas.each do |mes, venta|
    input.each do |arg|
        if venta == arg
            puts mes
        end
    end
end