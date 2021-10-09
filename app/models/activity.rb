class Activity < ApplicationRecord
  belongs_to :pet
  has_many :appointments, dependent: :destroy
  validates :vet, :groomer, :training, presence: true
end
