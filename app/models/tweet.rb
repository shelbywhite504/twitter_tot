class Tweet < ApplicationRecord
  belongs_to :user

  validates :message, presence: true
  validates :message, length: {maximum: 200, too_long: "A tweet is only 200 characters max, Bastard."}
end
