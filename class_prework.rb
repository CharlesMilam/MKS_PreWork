Pet = Class.new do
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

dog = Pet.new
dog.speak
puts "The dog #{dog.do_something("bark")}s."
dog.set_name("Tex")

Robot = Class.new do
  
  def kill_humans(num_humans)
   puts  "The robot kills #{num_humans.to_s} humans. Bad, robot, bad!"
  end
  
  def retrain(num_retrains)
    puts "I must not harm humans. " * num_retrains
  end
end

robbie = Robot.new
robbie.kill_humans(3)
robbie.retrain(3)

