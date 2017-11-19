class Idea < ApplicationRecord
    validates :description, :name,  presence: true
end
