class AddColumnToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :position, :string
  end
end
