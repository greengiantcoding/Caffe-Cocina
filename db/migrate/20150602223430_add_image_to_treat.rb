class AddImageToTreat < ActiveRecord::Migration
 def self.up
    change_table :treats do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photos, :image
  end
end
