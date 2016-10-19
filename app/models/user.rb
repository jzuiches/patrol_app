class User < ApplicationRecord
  validates :password, length: { minimum: 4 }
  has_secure_password
end
