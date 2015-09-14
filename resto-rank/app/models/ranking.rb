class Ranking < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :voter
end
