class Trip1 < ApplicationRecord
  belongs_to :user
  validates :name, :duration presence: true
end