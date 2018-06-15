# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

ingredients_serialized = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients = JSON.parse(ingredients_serialized)
ingredients['drinks'].each { | ingredient | Ingredient.create(name: ingredient['strIngredient1']) }


# Cocktail.create(name: 'Margarita', image_url: 'https://images.unsplash.com/photo-1525575674331-70638740994c?ixlib=rb-0.3.5&s=6b3f9c2498008488fbecbc682db24ce7&auto=format&fit=crop&w=668&q=80')
# Cocktail.create(name: 'Negroni', image_url: 'https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1998822d443cf97d75258149476c5aa5&auto=format&fit=crop&w=1649&q=80')
# Cocktail.create(name: 'Caipirinha', image_url: 'https://images.unsplash.com/photo-1512144981474-0003a89c0165?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7fc69f7f14aa68519563748422b1e45b&auto=format&fit=crop&w=975&q=80')
# Cocktail.create(name: 'Grapefruit cocktail', image_url: 'https://images.unsplash.com/photo-1500631195312-e3a9a5819f92?ixlib=rb-0.3.5&s=b1441a1c4767147449214defbc5c9054&auto=format&fit=crop&w=934&q=80')
# Cocktail.create(name: 'Craberry cocktail', image_url: 'https://images.unsplash.com/photo-1472245088132-ccd50746725c?ixlib=rb-0.3.5&s=a82d412efc50b6b217d561b72123be16&auto=format&fit=crop&w=1649&q=80')
# Cocktail.create(name: 'Fruity cocktail', image_url: 'https://images.unsplash.com/photo-1504310578167-435ac09e69f3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b710c3d382a92bac1a4c3aa674572a6b&auto=format&fit=crop&w=668&q=80')
# Cocktail.create(name: 'Bloody Mary', image_url: 'https://cdn-image.foodandwine.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/201309-xl-kimchi-bloody-mary.jpg?itok=8YJCFVx8')
# Cocktail.create(name: 'Irish coffee', image_url: 'https://images.unsplash.com/photo-1515701238541-0cb8d3165120?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0b78e6638336c80cd9e0196c045e3aed&auto=format&fit=crop&w=934&q=80')
# Cocktail.create(name: 'Martini', image_url: 'https://images.unsplash.com/photo-1527761939622-9119094630cf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e4ef6ecdc202744f5babc4de5eb287c0&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Daiquiri', image_url: 'https://images.unsplash.com/photo-1502304893662-8a23b8a721ba?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b8b7faa8b7679f70dce3c6fcf1a1acc2&auto=format&fit=crop&w=668&q=80')
# Cocktail.create(name: 'Mojito', image_url: 'https://images.unsplash.com/photo-1509448613959-44d527dd5d86?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=dde649e565a6cc5afadf42ab8262aa62&auto=format&fit=crop&w=800&q=60')
# Cocktail.create(name: 'Martini', image_url: 'https://images.unsplash.com/photo-1527761939622-9119094630cf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e4ef6ecdc202744f5babc4de5eb287c0&auto=format&fit=crop&w=800&q=60')




