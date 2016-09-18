class Poker < ApplicationRecord
  belongs_to :user
  belongs_to :user_story

  validates_presence_of :note
end
