require 'spec_helper'

describe Measurement do

  before do
    @measurement = Measurement.new(name: "teaspoon")
  end

  subject (@measurement)

  it { should respond_to(:name) }

  it { should be_valid }
end