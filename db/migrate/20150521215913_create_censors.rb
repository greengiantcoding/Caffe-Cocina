class CreateCensors < ActiveRecord::Migration
  def change
    create_table :censors do |t|
      t.string :word

      t.timestamps
    end
  end
end
