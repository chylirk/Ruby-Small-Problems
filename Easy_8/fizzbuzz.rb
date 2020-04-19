def fizzbuzz(start_int, end_int)
  (start_int..end_int).each do |i|
    case
    when i % 15 == 0 then puts 'FizzBuzz'
    when i % 3 == 0 then puts 'Fizz'
    when i % 5 == 0 then puts 'Buzz'
    else puts i
    end
  end
end

fizzbuzz(1, 15)