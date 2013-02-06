class IngredientsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.build
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    @ingredient.recipe_id = params[:recipe_id]
    @recipe = Recipe.find(params[:recipe_id])

    if @ingredient.save
      redirect_to @ingredient.recipe
    else
      render 'new'
    end
  end
end
