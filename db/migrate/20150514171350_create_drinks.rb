class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :sub_category
      t.float :price_tall
      t.float :price_grande
      t.float :price_venti
      t.integer :order_id

      t.timestamps
    end
  end
end
