#Using modulo, &&, conditions, loops and the following range (1..100), create a 
#loop that puts "FizzBuzz" if the number is divisible by both 3 and 5, "Fizz" if the 
#number is divisible by only 3, "Buzz" if the number is divisible by only 5, and 
#the number itself if not divisible by 3 or 5.
#Milam 102814

#Added the number being checked to the wordage, also added counts for each 'type' of number
#which is displayed at the end of processing
#Milam 102814

#Added pushing of numbers to an appropriate array upon evaluation, and 
#displaying those numbers after processing
#Milam 102814

range = 1..100

nums_fb = Array.new
nums_f = Array.new
nums_b = Array.new
nums_kill = Array.new

count_fb = 0
count_f = 0
count_b = 0
count_kill = 0

range.each do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz " + num.to_s
    nums_fb.push(num)
    count_fb += 1
  elsif num % 3 == 0
    puts "Fizz " + num.to_s
    nums_f.push(num)
    count_f += 1
  elsif num % 5 == 0
    puts "Buzz " + num.to_s
    nums_b.push(num)
    count_b += 1
  else
    puts "FizzBuzz kill " + num.to_s
    nums_kill.push(num)
    count_kill += 1
  end
end

puts
puts "A total of #{range.last} numbers were evaluated:"
puts "There were #{count_fb} FizzBuzz numbers, consisting of #{nums_fb}"
puts "There were #{count_f} Fizz numbers, consisting of #{nums_f}"
puts "There were #{count_b} Buzz numbers, consisting of #{nums_b}"
puts "There were #{count_kill} FizzBuzz Kill numbers, consisting of #{nums_kill}"
