class AddColumnToPhotos2 < ActiveRecord::Migration
  def change
  	add_column :photos, :polaroid, :integer
  end
end
