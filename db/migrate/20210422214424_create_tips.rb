class CreateTips < ActiveRecord::Migration[6.1]
  def change
    create_table :tips do |t|
      t.text :body

      t.timestamps
    end
  end
end
