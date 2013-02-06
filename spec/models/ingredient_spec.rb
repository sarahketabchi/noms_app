require 'spec_helper'

describe Ingredient do

  before { @ingredient = Ingredient.new }
  subject { @ingredient }

  describe "validity" do
    before(:each) do
      @ingredient.recipe_id = 1
      @ingredient.item_id = 1
      @ingredient.measurement_id = 1
      @ingredient.amount = 1.5
    end

    describe "when first initialized" do
      it { should respond_to(:recipe_id) }
      it { should respond_to(:item_id) }
      it { should respond_to(:measurement_id) }
      it { should respond_to(:amount) }

      it { should be_valid }
    end

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

  describe "associations" do
    let(:recipe) { FactoryGirl.create(:recipe) }
    let(:item) { FactoryGirl.create(:item) }
    let(:measurement) { FactoryGirl.create(:measurement) }

    before(:each) do
      @ingredient = recipe.ingredients.build(item: item,
                                             measurement: measurement,
                                             amount: 1.5)
    end

    its(:recipe) { should == recipe }
    its(:item) { should == item }
    its(:measurement) { should == measurement }

    it { should be_valid }

    describe "when recipe_id is not present" do
      before { @ingredient.recipe_id = nil }
      it { should_not be_valid }
    end

    describe "when measurement_id is not present" do
      before { @ingredient.measurement_id = nil }
      it { should_not be_valid }
    end

    describe "when item_id is not present" do
      before { @ingredient.item_id = nil }
      it { should_not be_valid }
    end
  end
end