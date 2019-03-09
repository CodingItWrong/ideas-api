class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.references :source, foreign_key: true
      t.references :idea, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
