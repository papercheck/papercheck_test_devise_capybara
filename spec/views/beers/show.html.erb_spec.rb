require 'spec_helper'

describe "/beers/show.html.erb" do
  include BeersHelper
  before(:each) do
    assigns[:beer] = @beer = stub_model(Beer,
      :brewer => "value for brewer",
      :beer_name => "value for beer_name",
      :city => "value for city",
      :state => "value for state"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ brewer/)
    response.should have_text(/value\ for\ beer_name/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ state/)
  end
end
