class AddColumnToFood < ActiveRecord::Migration
  	def change
  		add_column :foods, :lunch_category, :string
  	end
end
