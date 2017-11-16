class Manage < ApplicationRecord
    validates :name, :room, :location, :phone, :date, presence: true
end

