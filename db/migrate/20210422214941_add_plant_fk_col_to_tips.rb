class AddPlantFkColToTips < ActiveRecord::Migration[6.1]
  def change
    add_reference :tips, :plant, foreign_key: true
  end
end
