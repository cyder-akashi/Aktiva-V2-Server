class AddIndexLyricsTime < ActiveRecord::Migration[5.1]
  def change
    add_index :lyrics, :time
  end
end
