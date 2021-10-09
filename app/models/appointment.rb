class Appointment < ApplicationRecord
  belongs_to :activity
  validates :first_name, :last_name, presence: true
end
