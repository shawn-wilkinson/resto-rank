class Option < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :poll
  has_many :rankings
end
