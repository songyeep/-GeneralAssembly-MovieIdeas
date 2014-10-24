require 'rails_helper'

RSpec.describe "MovieIdeas", :type => :request do
  describe "GET /movie_ideas" do
    it "works! (now write some real specs)" do
      get movie_ideas_path
      expect(response.status).to be(200)
    end
  end
end
