class Country < ApplicationRecord
  has_many :provinces
  has_many :plants
  has_many :crops
  has_many :rice1s
  has_many :rice2s
  has_many :rice3s
  has_many :coffee1s
  has_many :coconut1s
end
  