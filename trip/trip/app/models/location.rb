class Location < ApplicationRecord
  has_many :addresses
  has_many :names, through :trips
end