class Province < ApplicationRecord
  belongs_to :country
  has_many :plants
  has_many :crops
end
