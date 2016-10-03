class User < ApplicationRecord
  has_many :articles

  validates :username, uniqueness: { scope: :email}
  validates :username,
            :email,
              presence: true

  has_secure_password
end
