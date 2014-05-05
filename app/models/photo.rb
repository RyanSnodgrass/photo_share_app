class Photo < ActiveRecord::Base
	# has_many_and_belongs_to_many :tags

	
	mount_uploader :photo_share, PhotoShareUploader
end