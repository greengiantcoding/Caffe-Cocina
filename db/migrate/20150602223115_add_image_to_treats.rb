class AddImageToTreats < ActiveRecord::Migration
  def self.up
    change_table :treat do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :treats, :image
  end
end
