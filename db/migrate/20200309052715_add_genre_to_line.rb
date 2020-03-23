class AddGenreToLine < ActiveRecord::Migration[5.2]
  def change
    add_column :lines, :genre, :string
  end
end
