require 'spec_helper'

describe "/beers/index.html.erb" do
  include BeersHelper

  before(:each) do
    assigns[:beers] = [
      stub_model(Beer,
        :brewer => "value for brewer",
        :beer_name => "value for beer_name",
        :city => "value for city",
        :state => "value for state"
      ),
      stub_model(Beer,
        :brewer => "value for brewer",
        :beer_name => "value for beer_name",
        :city => "value for city",
        :state => "value for state"
      )
    ]
  end

  it "renders a list of beers" do
    render
    response.should have_tag("tr>td", "value for brewer".to_s, 2)
    response.should have_tag("tr>td", "value for beer_name".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for state".to_s, 2)
  end
end
