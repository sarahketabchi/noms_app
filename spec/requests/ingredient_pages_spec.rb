require 'spec_helper'
describe "Ingredient pages " do
  subject { page }

  describe '#new' do
    # Ask ned about why this didnt work
    # It was previously NOT done inside of the before block
    # let(:item1) { FactoryGirl.create(:item) }
    # let(:item2) { FactoryGirl.create(:item) }
    # let(:measurement1) { FactoryGirl.create(:measurement) }
    # let(:measurement2) { FactoryGirl.create(:measurement) }

    before(:each) do
      3.times { FactoryGirl.create(:item) }
      3.times { FactoryGirl.create(:measurement) }

      visit new_ingredient_path
      fill_in "ingredient_amount", :with => "11.5"
      select(Item.last.name, :from => "Item")
      select(Measurement.first.name, :from => "Measurement")
    end

    # it "should increase the total ingredients" do
    #   expect { click_button "Submit Ingredient" }.to change(Ingredient, :count).by(1)
    # end


  end
end