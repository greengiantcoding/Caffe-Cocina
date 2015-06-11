class ChangeColumnsAddColumnDrinkSize < ActiveRecord::Migration
  def change
  	add_column :drinks, :price_8oz, :float
  	rename_column :drinks, :price_tall, :price_12oz
  	rename_column :drinks, :price_grande, :price_16oz
  	rename_column :drinks, :price_venti, :price_20oz
  end
end
