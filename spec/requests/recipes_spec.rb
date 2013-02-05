# require 'spec_helper'

# describe "recipes creation" do
#   # Doing it Neddy Style
#   def submit_recipe_form
#     visit new_recipe_path

#     fill_in 'recipe_name', :with => "Tasty Treat"
#     fill_in 'recipe_description', :with => "Really good treat."
#     click_button "Submit Recipe"
#   end

#   it "creates a new recipe" do
#     expect { submit_recipe_form }.to change(Recipe, :count).by(1)
#   end

#   it "redirects to the recipe after" do
#     submit_recipe_form
#     current_path.should =~ Regexp.new('recipes/\d+')
#   end
# end

