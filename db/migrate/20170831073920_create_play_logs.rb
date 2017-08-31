class CreatePlayLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :play_logs do |t|
      t.references :song, :null => false
      t.datetime :time, :null => false
      t.timestamps
    end
    add_foreign_key :play_logs, :songs, primary_key: :song_id
  end
end
