class WelcomeController < ApplicationController
  def index
    @info = MovieIdea.all.sample
  end
end
