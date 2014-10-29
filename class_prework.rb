#define two different classes (Pet and one of your choice). Each one of the classes should have various methods that take arguments.
#Milam 102814

class Pet 
  def speak
    Kernel.puts(@voice)
  end
  
  def do_something(action)
    return action
  end
  
  def get_name
    return @name
  end
  
  def set_name(pet_name)
    @name = pet_name
  end
  
  def set_voice(sound)
    @voice = sound
  end
end

class Robot 
  def get_name
    return @name
  end
  
  def set_name(name)
    @name = name
  end
  
  def kill_humans(num_humans)
   puts  "#{@name} kills #{num_humans.to_s} humans. Bad, robot, bad!"
  end
  
  def retrain(num_retrains)
    print "#{@name} says, " 
    print "I must not harm humans. " * num_retrains
  end
end

dog = Pet.new
dog.set_voice("Bow, wow, wow")
dog.speak
puts "The dog #{dog.do_something("bark")}s."
dog.set_name("Tex")
puts "The dog's name is #{dog.get_name}."

robot = Robot.new
robot.set_name("Robbie")
robot.kill_humans(3)
robot.retrain(3)

#Convert the following methods to use the send method. Put your results in class.rb
#5 * 5
#"omg".upcase
#['a', 'b', 'c'].at(1)
#['a', 'b', 'c'].insert(2, 'o', 'h', 'n', 'o')
#{}.size
#{character: "Mario"}.has_key?(:character)

puts
puts 5.send(:*, 5)
puts "omg".send(:upcase)
puts ['a', 'b', 'c'].send(:at, 1)
puts ['a', 'b', 'c'].send(:insert, 2, 'o', 'h', 'n', 'o')
#puts {}.send(:size)  complains of undefined method for 'siz' for nil class
result = {character: "Mario"}.send(:has_key?, :character)
puts result

#Convert the following methods to not use the send method. Put these results in class.rb
#6.send(:-, 32)
#{html: true, json: false}.send(:keys)
#"MakerSquare".send(:*, 6)
#"MakerSquare".send(:split, 'a')
#['alpha', 'beta'].send(:[], 3)

puts 6 - 32
puts result = {html: true, json: false}.keys
puts "MakerSquare" * 6
puts "MakerSquare".split('a')
puts ['alpha', 'beta'][3]