class Pet < ApplicationRecord
  belongs_to :user
  has_many :activities, dependent: :destroy
  validates :name, :breed, :weight, :dob, presence: true
end
