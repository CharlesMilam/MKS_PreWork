#We're going to quickly implement a simple Cookbook that can hold Recipes and has 
#instance variables, initialize methods, attr_accessors and interaction between classes.
#Milam 102914

class Cookbook
  attr_accessor :title
  
  def initialize(title)
    @title = title
  end
    
end
  
class Recipe
  attr_accessor :title, :ingredients, :steps
  
  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end
  
end
