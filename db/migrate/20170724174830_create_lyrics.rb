class CreateLyrics < ActiveRecord::Migration[5.1]
  def change
    create_table :lyrics do |t|
      t.references :song, :null => false
      t.time :time, :null => false
      t.string :text, :null => false
      t.timestamps
    end
    add_foreign_key :lyrics, :songs, primary_key: :song_id
  end
end
