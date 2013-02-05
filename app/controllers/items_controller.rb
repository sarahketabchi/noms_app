class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(params[:item])
    redirect_to @item
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end
end