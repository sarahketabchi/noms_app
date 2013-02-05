require 'spec_helper'

describe "Item pages " do
  subject { page }

  describe "#show" do
    let(:item) { Item.create(name: "Sugar") }

    before(:each) do
      visit item_path(item)
    end

    it { should have_selector('h1', text: item.name) }
  end

  describe '#index' do
    before do
      5.times { FactoryGirl.create(:item) }
      visit items_path
    end

    it "should list each item" do
      Item.all.each do |item|
        page.should have_selector('li', text: item.name)
      end
    end
  end

  describe '#new' do
    let(:item) { FactoryGirl.create(:item) }

    before(:each) do
      visit new_item_path
      fill_in "item_name", with: "Chocolate"
    end

    it "should increase the total items" do
      expect { click_button "Submit Item" }.to change(Item, :count).by(1)
    end

    it "should redirect to the item's show page" do
      post items_path(item)
      response.should redirect_to(Item.last)
    end
  end

end



