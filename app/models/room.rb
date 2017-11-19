class Room < ApplicationRecord
    validates :symbol, :number, :price, :sitter, presence: true
end
