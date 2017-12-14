class User < ApplicationRecord
	mount_uploader :profile_pic, ImageUploader
	mount_uploader :signature, ImageUploader

	has_many :expertises
	has_many :experiences
	has_many :educations
	has_many :interests
	has_many :portfolios
	has_many :skills
	has_secure_password
end
