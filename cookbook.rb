#We're going to quickly implement a simple Cookbook that can hold Recipes and has
#instance variables, initialize methods, attr_accessors and interaction between classes.
#Milam 102914

class Cookbook
  attr_reader :recipes
  attr_accessor :title

  def initialize(title)
    @title = title
    @recipes = []
  end

  def add_recipe(new_recipe)
    @recipes.push(new_recipe)
    puts "New recipe added: #{new_recipe.title}"
  end

  def recipe_titles
    @recipes.each {|recipe| puts "#{recipe.title}"}
  end

  def recipe_ingredients
    @recipes.each {|recipe| puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"}
  end

  def print_cookbook

  	# puts
  	# puts @title
  	# @title.length.times {print "- "}
  	# puts
  	# puts "Ingredients"
  	# @ingredients.each {|ingredient| puts "  #{ingredient}"}
  	# puts
  	# puts "Directions"
  	# @steps.each {|step| puts "* #{step}" }
  	# puts
  end

end

class Recipe
  attr_accessor :title, :ingredients, :steps

  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end

  def print_recipe
  	puts
  	puts @title
  	@title.length.times {print "- "}
  	puts
  	puts "Ingredients"
  	@ingredients.each {|ingredient| puts "  #{ingredient}"}
  	puts
  	puts "Directions"
  	@steps.each {|step| puts "* #{step}" }
  	puts
  end

end
