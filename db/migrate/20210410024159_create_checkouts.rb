class CreateCheckouts < ActiveRecord::Migration[6.1]
  def change
    create_table :checkouts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps
    end
  end
end
