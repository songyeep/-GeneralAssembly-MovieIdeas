class AddPitchToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pitch, :string
  end
end
