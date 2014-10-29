class AddPitcherToMovieIdeas < ActiveRecord::Migration
  def change
    add_column :movie_ideas, :pitcher, :string
  end
end
