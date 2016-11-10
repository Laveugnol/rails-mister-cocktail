class RemoveCocktailReferenceToIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_reference :ingredients, :cocktail, foreign_key: true
  end
end
