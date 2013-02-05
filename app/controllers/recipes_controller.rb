class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
    redirect_to(@recipe)
  end
end
