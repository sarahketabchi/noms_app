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

  it { should be_valid }

  describe "is not valid" do
    specify "when recipe_id is not present" do
      subject.recipe_id = nil
      subject.should_not be_valid
    end

    specify "when item_id is not present" do
      subject.item_id = nil
      subject.should_not be_valid
    end

    specify "when measurement_id is not present" do
      subject.measurement_id = nil
      subject.should_not be_valid
    end
  end

end