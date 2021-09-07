# 'Hello World' in ruby, and basic method creation. 

# outputs all operators and then checks division to see if it matches your favorite number.
def my_first_method (parameter1, parameter2, parameter3 = $name)
    puts parameter1 + parameter2
    puts parameter1 - parameter2
    puts parameter1 * parameter2
    puts parameter1 / parameter2
    if parameter1 / parameter2 == $rubyFave 
        puts ruby_respond $rubyFave
    else
        puts ruby_respond parameter3
    end
end

def ruby_respond (var1, var2 = $rubyFave)
    if var1 == var2
        puts "It's my favorite number!, which is #{var2}. Oh my, It's just the same as your's, #{$name}."
    else
        puts "Do you like my methods, #{var1}?"
    end
end

# begin dialogue
puts "Hello, World!"

puts "Please enter your name."
$name = gets.chop
puts "Hi, #{$name}, I'm Ruby! Aren't we now friends?"

puts "Let's do a math problem."
puts "Please pick two numbers."
num1 = gets.chop
num2 = gets.chop
puts "I'll add these up. It's #{num1 + num2}!"
puts "We can learn more operators later, okay #{$name}?"

# type conversion
num1 = num1.to_i
num2 = num2.to_i

print "Here is a string."
print "Here is another string!"
puts "Did you learn about my newline gotcha #{$name}?"

puts "#{$name}, what's your favorite number?"
$rubyFave = gets.chop.to_i

puts "I can perform all of the operators, would you like to see? y/n?"
userInput = gets.chop

# control flow
if userInput == "y" 
    puts "Coming up..."
    my_first_method num1, num2
elsif userInput == "n" 
    puts "Fine."
    puts "...#{$name}"
elsif userInput != "y" or userInput != "n"
    puts "I'm just not sure what you mean."
end

# END of document
