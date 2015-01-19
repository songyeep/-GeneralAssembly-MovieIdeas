class RemoveMoreInfoFromMovieIdeas < ActiveRecord::Migration
  def change
    remove_column :movie_ideas, :more_info, :string
  end
end
