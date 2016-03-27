class Guest < ActiveRecord::Base
  has_and_belongs_to_many :parties
  has_and_belongs_to_many :foods
   validates :username, presence: true, uniqueness: true
end
