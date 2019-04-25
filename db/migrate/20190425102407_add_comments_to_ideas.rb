class AddCommentsToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :comments, :text
  end
end
