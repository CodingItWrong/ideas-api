class AddMediumToSource < ActiveRecord::Migration[6.0]
  def change
    add_reference :sources, :medium, null: true, foreign_key: true
  end
end
