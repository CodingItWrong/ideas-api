class AddAffiliationToAuthor < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :affiliation, :string
  end
end
