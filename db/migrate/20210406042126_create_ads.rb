class CreateAds < ActiveRecord::Migration[6.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.decimal :price
      t.integer :stock

      t.timestamps
    end
  end
end
