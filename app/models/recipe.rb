class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :rating
end
