require 'spec_helper'

describe Beer do
  before(:each) do
    @valid_attributes = {
      :brewer => "value for brewer",
      :beer_name => "value for beer_name",
      :city => "value for city",
      :state => "value for state"
    }
  end

  it "should create a new instance given valid attributes" do
    Beer.create!(@valid_attributes)
  end
end
