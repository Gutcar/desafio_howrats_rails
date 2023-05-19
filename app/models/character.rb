class Character < ApplicationRecord
    validates :name, presence: true 
    validates :location, presence: true
    validates :house, presence: true
end
