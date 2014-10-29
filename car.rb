#I want the car to keep track of it's position and how much gas it has
#When I call the method setup on the car, it should set the position to 0 and gas to 10 (gallons)
#I should be able to drive the car and tell it how many miles to drive. The car should adjust it's position and gas mileage here
#I want the car to be able to fill up gas and print out how much the gas cost
#Milam 102814

class Car
  def initialize
    puts "The initialize method is running automatically"
    set_max_fuel(10)
    set_fuel(get_max_fuel)
    set_distance(0)
    set_mpg(20.0)
    set_fuel_cost(3.50)   
    set_max_range 
  end
  
  def get_info
    "I'm a car! I've driven #{get_distance} miles, and have #{get_fuel} gallons of fuel remaining"
  end
  
  def get_max_fuel
    @max_fuel
  end
  
  def get_fuel
    @fuel
  end
  
  def get_distance
    @distance
  end
  
  def get_mpg
    @mpg
  end
  
  def get_max_range
    @max_range 
  end
    
  def get_fuel_cost
    @fuel_cost
  end
    
  def set_max_fuel(max_fuel)
    @max_fuel = max_fuel
  end
  
  def set_fuel(fuel)
    if get_fuel.nil?
      total_fuel = fuel
    else
      total_fuel = get_fuel + fuel
    end
    
    if total_fuel > get_max_fuel
      "The car will not hold that much fuel. The tank will be full with #{(get_max_fuel - get_fuel)} gallons added"
    else
      if get_fuel.nil?
        @fuel = fuel
      else
        @fuel = get_fuel + fuel
        set_distance(0)
      end      
    end    
  end
  
  def set_fuel_consumed(fuel_used)
    @fuel = get_fuel - fuel_used
  end
  
  def set_distance(distance)
    @distance = distance
  end 
  
  def set_mpg(mpg)
    @mpg = mpg
  end
    
  def set_max_range
    @max_range = get_fuel * get_mpg
  end
  
  def set_fuel_cost(fuel_cost)
    @fuel_cost = fuel_cost
  end
  
  def drive(dist_driven)
    total_dist = get_distance + dist_driven
    if total_dist > get_max_range
      "The car will run out of fuel before reaching the distance requested. You can currently drive #{get_max_range - get_distance} more miles, and will then need to refuel."
    else
      set_distance(@distance + dist_driven)
      set_fuel_consumed(dist_driven / get_mpg)
    end
  end
  
  def fuel_up
    fuel_to_max = get_max_fuel - get_fuel
    tot_fuel_cost = fuel_to_max * get_fuel_cost
    set_fuel(fuel_to_max)
    set_distance(0)
    puts "You filled the car's fuel tank, at a cost of $#{tot_fuel_cost}."
    
  end
end