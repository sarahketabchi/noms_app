module IngredientsHelper

  def recipe_link(recipe_id)
    recipe = Recipe.find(recipe_id)
    "#{link_to recipe.name, recipe}".html_safe
  end
end
