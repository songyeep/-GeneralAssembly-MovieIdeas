class AddMoreInfoToMovieIdeas < ActiveRecord::Migration
  def change
    add_column :movie_ideas, :more_info, :text
  end
end
