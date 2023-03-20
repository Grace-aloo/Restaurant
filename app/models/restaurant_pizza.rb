class RestaurantPizza < ApplicationRecord
    validates :price, inclusion: 1..30
    belongs_to :restaurant
    belongs_to :pizza
end
