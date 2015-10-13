class Poll < ActiveRecord::Base
  belongs_to :creator, class_name: "User"

  has_many :invitations
  has_many :users, through: :invitations

  has_many :options
  has_many :rankings, through: :options
  has_many :restaurants, through: :options, foreign_key: :restaurant_id
end
