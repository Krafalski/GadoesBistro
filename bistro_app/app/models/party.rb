class Party < ActiveRecord::Base
  has_many :guests , dependent: :destroy
   validates :party_name, presence: true, uniqueness: true
end
