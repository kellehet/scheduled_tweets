class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/, message: 'must be a vaild email address' }
end
