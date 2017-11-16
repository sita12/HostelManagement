class CreateManages < ActiveRecord::Migration[5.1]
  def change
    create_table :manages do |t|
    t.string :name
    t.integer :room
    t.string :location
    t.string :phone
    t.date :date
    t.timestamps null: false
      
    end
  end
end
