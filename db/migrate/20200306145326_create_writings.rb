class CreateWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :writings do |t|
      t.string :url

      t.timestamps
    end
  end
end
