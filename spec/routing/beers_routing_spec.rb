require 'spec_helper'

describe BeersController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/beers" }.should route_to(:controller => "beers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/beers/new" }.should route_to(:controller => "beers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/beers/1" }.should route_to(:controller => "beers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/beers/1/edit" }.should route_to(:controller => "beers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/beers" }.should route_to(:controller => "beers", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/beers/1" }.should route_to(:controller => "beers", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/beers/1" }.should route_to(:controller => "beers", :action => "destroy", :id => "1") 
    end
  end
end
