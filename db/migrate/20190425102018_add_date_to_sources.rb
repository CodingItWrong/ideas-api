class AddDateToSources < ActiveRecord::Migration[5.2]
  def change
    add_column :sources, :date, :date
  end
end
