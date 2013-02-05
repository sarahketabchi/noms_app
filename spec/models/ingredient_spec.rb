require 'spec_helper'

describe Ingredient do
  subject(:ingredient) do
    Ingredient.new(recipe_id: 1,
                   item_id: 1,
                   measurement_id: 1,
                   amount: 1.5)
  end

  it { should respond_to(:recipe_id) }
  it { should respond_to(:item_id) }
  it { should respond_to(:measurement_id) }
  it { should respond_to(:amount) }

  it{ should be_valid }
end