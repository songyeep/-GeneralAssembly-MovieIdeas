class AddUserIdToMovieIdea < ActiveRecord::Migration
  def change
    add_column :movie_ideas, :user_id, :integer
  end
end
