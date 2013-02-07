class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :rating
  has_many :ingredients, :dependent => :destroy
  has_many :items, :through => :ingredients

  validates :name, :presence => true
end
