class Crop < ApplicationRecord
  belongs_to :country
  belongs_to :province
  belongs_to :category
  has_many :rice1s
  has_many :rice2s
  has_many :rice3s
  has_many :coffee1s
  has_many :coconut1s
end
