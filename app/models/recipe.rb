class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :rating
  has_many :ingredients
  has_many :items, :through => :ingredients
end
