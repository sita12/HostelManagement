class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|

    t.integer :symbol
    t.integer :number
    t.integer :price
    t.integer :sitter
    t.timestamps null: false  
    end
  end
end
