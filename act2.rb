# QUESTION 1
puts"This is Q1:"

def tag name_tag, text
    "<#{name_tag}>" + text + "</#{name_tag}>"
end

puts tag :p, "This is a paragraph."
puts tag :h1, "This is a header."
# QUESTION 2
puts"\nThis is Q2:"

numbers = [1, 2, 3, 4, 5]

numbers.each do |i|
    puts i * 2
end

new_array = numbers.map do |i|
    i * 3
end

print new_array
# QUESTION 3
puts "\n\nThis is Q3:"

def safe_divide(num1, num2)
    begin 
        result = num1 / num2
    rescue => e
        puts "Error: #{e.message}"
    end
end

puts safe_divide(10, 2)
puts safe_divide(5, 0)
# QUESTION 4
puts"\nThis is Q4:"

def reverse_file(input_file)
    begin
        reverse_file = File.read(input_file).reverse

        File.open('output.txt', 'w') do |file|
            file.write(reverse_file)
        end
    rescue => e
        puts "Error: #{e.message}"
    end
end

reverse_file('input.txt')

reverse_file('doesnotexist.txt')
# QUESTION 5
puts"\nThis is Q5:"

class InvalidAgeError < StandardError; end

def validate_age(age)
    begin
        if age < 1
            raise InvalidAgeError, "Age cannot be negative."
        else
            puts "Age is valid."
        end
    rescue InvalidAgeError => e
        puts "Error: #{e.message}"
    end
end

validate_age(-5)
validate_age(30)
# QUESTION 6
puts"\nThis is Q6"

student = {name: "Alice", age: 20, grade: "A"}

student.each do |key, value|
    puts "#{key}: #{value}"
end
# QUESTION 7
puts"\nThis is Q7"

numbers = [1, 2, 3, 4, 5, 6]

puts numbers.select {|num| num % 2 == 0}
# QUESTION 8 
puts "\nThis is Q8"

def warn_unless(bool, warning)
    unless bool
        puts warning
    end
end

warn_unless(true, "This is a warning.")
warn_unless(false, "This is a warning.")
# QUESTION 9
puts "\nThis is Q9"

def check_status
    puts "Status: #{$app_status}"
end

$app_status = "OK"
check_status
$app_status = "Error"
check_status
# Question 10
puts "\nThis is Q10"

5.times do |i|
    puts "Ruby is fun!"
end
# Question 11
puts "\nThis is Q11"

(1..5).each do |num|
    puts num
end
# Question 12
puts "\nThis is Q12"

lines = File.readlines('sample.txt')
lines[0..2].each_with_index do |line, index|
    puts "#{index + 1}: #{line}"
end
# Question 14
puts "\nThis is Q14"

words = ["Ruby", "is", "awesome"]

length_words = words.map {|word| word.length}

print length_words

# Question 15
puts "\n\nThis is Q15"

def safe_divide(num1, num2)
    begin 
        result = num1 / num2
    rescue => e
        puts "Error: #{e.message}"
    end
end

puts safe_divide(10, 2)
puts safe_divide(5, 0)