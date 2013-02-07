class IngredientsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.build
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])

    if @ingredient.save
      redirect_to @ingredient.recipe
    else
      @recipe = Recipe.find(@ingredient.recipe)
      render 'new'
    end
  end
end
