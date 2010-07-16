require 'spec_helper'

describe "/beers/edit.html.erb" do
  include BeersHelper

  before(:each) do
    assigns[:beer] = @beer = stub_model(Beer,
      :new_record? => false,
      :brewer => "value for brewer",
      :beer_name => "value for beer_name",
      :city => "value for city",
      :state => "value for state"
    )
  end

  it "renders the edit beer form" do
    render

    response.should have_tag("form[action=#{beer_path(@beer)}][method=post]") do
      with_tag('input#beer_brewer[name=?]', "beer[brewer]")
      with_tag('input#beer_beer_name[name=?]', "beer[beer_name]")
      with_tag('input#beer_city[name=?]', "beer[city]")
      with_tag('input#beer_state[name=?]', "beer[state]")
    end
  end
end
