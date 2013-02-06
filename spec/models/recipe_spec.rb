require 'spec_helper'

describe Recipe do
  before do
    @recipe = Recipe.new(name: "Delicious Treat",
                         description: "A goody for your friends",
                         rating: 9)
  end

  subject { @recipe }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:rating) }
  it { should respond_to(:ingredients) }
  it { should respond_to(:items) }

  it { should be_valid }
end