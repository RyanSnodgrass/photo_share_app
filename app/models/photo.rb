class Photo < ActiveRecord::Base
	# has_many_and_belongs_to_many :tags
	
	require 'carrierwave/orm/activerecord'
	mount_uploader :photo_share, PhotoShareUploader
end