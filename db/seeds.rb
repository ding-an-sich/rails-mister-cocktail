require 'json'
require 'open-uri'
require 'pry-byebug'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktails_json = JSON.parse(URI.parse(url).read)
cocktails_json['drinks'].each do |item|
  ingredient = Ingredient.create(name: item['strIngredient1'])
  puts "Created #{ingredient.name}"
end
