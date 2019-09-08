class CreateJoinTableSourceTag < ActiveRecord::Migration[6.0]
  def change
    create_join_table :sources, :tags do |t|
      t.index :source_id
      t.index :tag_id
    end
  end
end
