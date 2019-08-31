class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plants
  has_many :rice1s
  has_many :rice2s
  has_many :rice3s
  has_many :coconut1s
  has_many :coffee1s
end
