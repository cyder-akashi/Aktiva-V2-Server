class AddVideoToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :video, :string, :null => false
  end
end
