class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :item
  belongs_to :measurement

  attr_accessible :amount, :item_id, :item, :measurement_id,
                  :measurement, :recipe_id, :recipe

  validates :item_id, :measurement_id, :recipe_id, :amount, :presence => true
end
