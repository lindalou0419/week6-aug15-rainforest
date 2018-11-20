class User < ApplicationRecord
  has_secure_password # => now can store secure password with the help of bcrypt
  validates :email, presence: true
end
