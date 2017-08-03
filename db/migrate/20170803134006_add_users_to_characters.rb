class AddUsersToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :user, foreign_key: true
  end
end
