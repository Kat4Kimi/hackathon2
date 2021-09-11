class User < ApplicationRecord
  has_many :trips
  # has_one :email, :password, dependent: :destroy
  validates :email, :password, presence: true
end