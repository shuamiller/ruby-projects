def fibs n
    numbers = [0, 1]
    i = n-2
    first_n = 0
    second_n = 1
    i.times do
        temp_n = first_n + second_n
        numbers.push temp_n
        first_n = second_n
        second_n = temp_n
    end
    p numbers
end

puts "Pick a number"
number = gets.chomp.to_i

fibs number