ventas= {
    Enero:15000,
    Febrero:22000,
    Marzo:12000,
    Abril:17000,
    Mayo:81000,
    Junio:13000,
    Julio:21000,
    Agosto:41200,
    Septiembre:25000,
    Octubre:21500,
    Noviembre:91000,
    Diciembre:21000
}

arr = []
ventas.each_slice(3) {|sliced| arr.push(sliced)}

new_arr = []
arr.each do |item|
    item.each do |value|
        new_arr.push(value[1])
    end
end

sum = 0
sum1 = 0
sum2 = 0
sum3 = 0
quarters = {}
new_arr.each.each_with_index do |item, index|
    if index < 3
        sum += item
        quarters["Q1"] = sum
    elsif index < 6
        sum1 += item
        quarters["Q2"] = sum1
    elsif index < 9
        sum2 += item
        quarters["Q3"] = sum2
    else
        sum3 += item
        quarters["Q4"] = sum3
    end
end
print quarters
puts


