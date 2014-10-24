class CreateMovieIdeas < ActiveRecord::Migration
  def change
    create_table :movie_ideas do |t|
      t.string :synopsis
      t.string :more_info

      t.timestamps
    end
  end
end
