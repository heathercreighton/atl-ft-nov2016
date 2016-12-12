class Tweet < ActiveRecord::Base

	belongs_to :user
	has_many :tweet_tags
	has_many :tags, through: :tweet_tags


	validates :message, presence: true, length: {maximum: 140, too_long: "A tweet is only 140 max.  Everybody knows that!"}
end
