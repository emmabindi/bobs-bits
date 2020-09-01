class User < ApplicationRecord
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :email, presence: true, uniqueness: true
end
