class AddCommentsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :comments, :text
  end
end
