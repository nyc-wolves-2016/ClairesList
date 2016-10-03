class User < ApplicationRecord
  validates :username, uniqueness: { scope: :email}
  validates :username,
            :email,
              presence: true

  has_secure_password
end
