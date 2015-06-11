class CreateLayoutPictures < ActiveRecord::Migration
  def change
    create_table :layout_pictures do |t|
      t.string :position
      t.attachment :image

      t.timestamps
    end
  end
end
