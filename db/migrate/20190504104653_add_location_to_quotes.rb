class AddLocationToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :location, :string
  end
end
