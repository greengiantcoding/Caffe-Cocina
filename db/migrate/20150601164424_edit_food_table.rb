class EditFoodTable < ActiveRecord::Migration
  def change
  	 add_column :foods, :price_label, :string
  	 add_column :foods, :alt_price_label, :string
  	 remove_column :foods, :sub_category, :string
  end
end
