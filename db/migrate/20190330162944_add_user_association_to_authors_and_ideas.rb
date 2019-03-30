class AddUserAssociationToAuthorsAndIdeas < ActiveRecord::Migration[5.2]
  def change
    add_reference :authors, :user
    add_reference :ideas, :user
  end
end
