class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.text :summary
      t.text :quote

      t.timestamps
    end
  end
end
