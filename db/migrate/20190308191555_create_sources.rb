class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :title
      t.string :url
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
