class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.date :hired
      t.text :bio
      t.string :position

      t.timestamps
    end
  end
end
