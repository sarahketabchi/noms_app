class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create!(params[:ingredient])
    # redirect to show
  end
end
