class CreateLyrics < ActiveRecord::Migration[5.1]
  def change
    create_table :lyrics do |t|
      t.references :song
      t.time :time
      t.string :text
      t.timestamps
    end
    add_foreign_key :lyrics, :songs, primary_key: :song_id
  end
end
