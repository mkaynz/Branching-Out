class AddUserFkColToPlants < ActiveRecord::Migration[6.1]
  def change
    add_reference :plants, :user, foreign_key: true
  end
end
