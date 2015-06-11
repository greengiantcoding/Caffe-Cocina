class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :content
      t.integer :rating
      t.string :visible

      t.timestamps
    end
  end
end
