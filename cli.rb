require "colorize"
puts "WELCOME TO OUR SIMPLE KALKULATOR"
puts "Would you like to add, subtract, multiply, or divide?".colorize(:light_blue)
user_input = gets.chomp

puts "What is your first number?".colorize(:green)
num1 = gets.chomp.to_i

puts "what is your second number?".colorize(:red)
num2 = gets.chomp.to_i

def calc(num1, num2, user_input)
  if user_input == "add"
    add(num1, num2)
    elsif user_input == "subtract"
    subtract(num1, num2)
    elsif user_input == "multiply"
    multiply(num1, num2)
    elsif user_input == "divide"
    divide(num1, num2)
  end 
end

def add(num1,num2)
  return num1 + num2
end
def subtract(num1, num2)
  return num1 - num1-num2
end
def multiply(num1, num2)
  return num1*num2
end
def divide(num1, num2)
  return num1/num2
end
puts "Your answer is..."
puts calc(num1, num2, user_input)
puts 


puts "Are you satisified?"
answer = gets.chomp


  if answer == "yes"
     puts "THANK YOU! COME AGAIN!".colorize(:yellow)
  else 
    puts "sorry thats unfortunate :("
  end




