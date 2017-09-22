class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs, primary_key: "song_id" do |t|
      t.string :title, null: false
      t.references :artist, null: false
      t.references :lyricist
      t.references :composer
      t.references :choreographer
      t.boolean :beginners_badge, default: false
      t.boolean :person_badge, default: false
      t.timestamps
    end
    add_foreign_key :songs, :people, column: :artist_id
    add_foreign_key :songs, :people, column: :lyricist_id
    add_foreign_key :songs, :people, column: :composer_id
    add_foreign_key :songs, :people, column: :choreographer_id
  end
end
