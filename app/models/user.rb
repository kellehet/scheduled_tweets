class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets
  has_secure_password

  validates :email, presence: true, format: { with: /\A(\S+)@(.+)\.(\S+)\z/, message: 'must be a vaild email address' }
end
