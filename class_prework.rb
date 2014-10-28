#define two different classes (Pet and one of your choice). Each one of the classes should have various methods that take arguments.
#Milam 102814

class Pet 
  def speak
    Kernel.puts("Woof, woof!")
  end
  
  def do_something(action)
    return action
  end
  
  def set_name(pet_name)
    puts "The pet's name is #{pet_name}."
  end
end

class Robot 
  def kill_humans(num_humans)
   puts  "The robot kills #{num_humans.to_s} humans. Bad, robot, bad!"
  end
  
  def retrain(num_retrains)
    puts "I must not harm humans. " * num_retrains
  end
end

dog = Pet.new
dog.speak
puts "The dog #{dog.do_something("bark")}s."
dog.set_name("Tex")

robbie = Robot.new
robbie.kill_humans(3)
robbie.retrain(3)

