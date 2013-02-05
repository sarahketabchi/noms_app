require 'spec_helper'

describe Item do
  before do
    @item = Item.new(name: "Sugar")
  end

  subject { @item }

  it { should respond_to(:name) }
  it { should be_valid }
end