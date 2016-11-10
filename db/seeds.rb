
require 'json'
require 'open-uri'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
buffer = open(url).read
result = JSON.parse(buffer)



result["drinks"].each do |element|
  ingredient = Ingredient.new({name: element["strIngredient1"]})
  ingredient.save
end


