class Food < ActiveRecord::Base

has_and_belongs_to_many :guests

validates :food_name, :food_type, :preview_url, :artwork, presence: true
validates :price, numericality: true, inclusion: { in: 0..999 }
end
