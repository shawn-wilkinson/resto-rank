class Poll < ActiveRecord::Base
  has_many :voters
  has_many :restaurants
  has_many :rankings, through: :voters
end
