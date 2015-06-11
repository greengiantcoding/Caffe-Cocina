class CreateAdministrations < ActiveRecord::Migration
  def change
    create_table :administrations do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
