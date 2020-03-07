class CreateVideoEdits < ActiveRecord::Migration[5.2]
  def change
    create_table :video_edits do |t|
      t.string :url

      t.timestamps
    end
  end
end
