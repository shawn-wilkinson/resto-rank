class User < ActiveRecord::Base
  has_many :rankings
  has_many :polls


  has_secure_password
  validates :password, length: {minimum: 6}, allow_nil: true
end
