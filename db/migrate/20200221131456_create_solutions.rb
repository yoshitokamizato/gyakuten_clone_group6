class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.text :answer, null: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
