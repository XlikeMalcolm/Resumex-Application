class User < ApplicationRecord
	before_save { email.downcase! }
	validates :name, presence: true, length: { maximum: 51 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }

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
