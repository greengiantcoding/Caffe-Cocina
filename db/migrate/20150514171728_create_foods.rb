class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :sub_category
      t.float :price
      t.float :alt_price
      t.integer :order_id

      t.timestamps
    end
  end
end
