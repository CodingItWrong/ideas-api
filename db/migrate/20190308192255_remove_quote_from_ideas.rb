class RemoveQuoteFromIdeas < ActiveRecord::Migration[5.2]
  def change
    remove_column :ideas, :quote, :text
  end
end
