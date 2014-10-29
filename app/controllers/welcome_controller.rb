class WelcomeController < ApplicationController
  def index
    if params[:id]
      @info = MovieIdea.find params[:id]
    else
      @info = MovieIdea.all.sample
    end
  end
end
