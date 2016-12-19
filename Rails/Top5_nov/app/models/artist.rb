class Artist < ActiveRecord::Base

mount_uploader :avatar, AvatarUploader

	has_many :songs
	validates :name, presence: true
	validates :name, presence: true
end
