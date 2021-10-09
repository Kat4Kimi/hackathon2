# frozen_string_literal: true

class User < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  #validates :first_name, :last_name, presence: true
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  include DeviseTokenAuth::Concerns::User
end
