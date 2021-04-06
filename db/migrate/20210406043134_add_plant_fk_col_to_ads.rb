class AddPlantFkColToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :plant, foreign_key: true
  end
end
