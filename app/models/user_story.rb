class UserStory < ApplicationRecord
  belongs_to :user
  has_many :pokers
end