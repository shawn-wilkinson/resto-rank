class Restaurant < ActiveRecord::Base
  has_many :rankings
  belongs_to :poll
end
