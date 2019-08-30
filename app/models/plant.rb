class Plant < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :country, optional: true
  belongs_to :province, optional: true
  belongs_to :user, optional: true
end
