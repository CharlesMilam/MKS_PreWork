require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
taco = Recipe.new("Beef Taco", ["taco shell", "ground beef", "grated cheese", "lettuce", "diced tomatoes"],
	["cook beef", "place beef in shell", "top with lettuce and cheese"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]
puts

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes
puts

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]
puts

puts burrito.title # Veggie Burrito
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]
puts

#mex_cuisine.recipes # []
#mex_cuisine.add_recipe(burrito)
#p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]
#puts

mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito) # Added a recipe to the collection: Veggie Burrito
mex_cuisine.add_recipe(taco)
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]
puts

puts mex_cuisine.recipes.length
mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]

burrito.print_recipe
taco.print_recipe

mex_cuisine.print_cookbook

print "*******************************************************\n"
mex_cuisine.change_recipe_title("Beef Taco", "Carne Taco")
print "*******************************************************"
mex_cuisine.print_cookbook

mex_cuisine.delete_recipe("Carne Taco")
mex_cuisine.print_cookbook
p mex_cuisine.recipes
