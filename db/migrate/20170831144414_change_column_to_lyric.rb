class ChangeColumnToLyric < ActiveRecord::Migration[5.1]
  def change
    change_column :lyrics, :time, :time, :null => false, limit: 3
  end
end
