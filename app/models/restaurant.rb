class Restaurant < ActiveRecord::Base
  has_many :options
  has_many :polls, through: :options
  has_many :rankings, through: :options
end
