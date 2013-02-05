class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :item_id, :measurement_id, :recipe_id
end
