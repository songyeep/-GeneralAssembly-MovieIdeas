require "rails_helper"

RSpec.describe MovieIdeasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/movie_ideas").to route_to("movie_ideas#index")
    end

    it "routes to #new" do
      expect(:get => "/movie_ideas/new").to route_to("movie_ideas#new")
    end

    it "routes to #show" do
      expect(:get => "/movie_ideas/1").to route_to("movie_ideas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movie_ideas/1/edit").to route_to("movie_ideas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/movie_ideas").to route_to("movie_ideas#create")
    end

    it "routes to #update" do
      expect(:put => "/movie_ideas/1").to route_to("movie_ideas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movie_ideas/1").to route_to("movie_ideas#destroy", :id => "1")
    end

  end
end
