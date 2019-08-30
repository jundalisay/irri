class Country < ApplicationRecord
  has_many :provinces
  has_many :plants
end
