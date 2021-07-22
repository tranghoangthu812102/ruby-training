# Input function
def input(arr)
    arr.each_index{ |index|
        print "Nhap phan tu thu #{index + 1}: "
        number = gets.to_i
        if number === nil
            arr[index] = 0
        else
            arr[index] = number
        end
    }
end

# Calculate sum function
def sum(arr)
    return arr.inject{ |sum, value| 
        sum += value
    }
end

# Proc square
square_value = Proc.new { |value| 
    value != 6 && value !=7 ?
    value*value : value
}
# square function
def square(arr, proc_square)
    return arr.map{ |value|
        proc_square.call(value)
    }
end

# main function
arr = Array.new(5)

input(arr)

puts "==>"
puts "Cac phan tu cua mang: #{arr}"
puts "Tong cac phan tu : #{sum(arr)}"
print "Mang sau khi binh phuong: #{square(arr, square_value)}"
puts "\n"




