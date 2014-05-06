class Photo < ActiveRecord::Base
	has_many :comments, :as => :commentable
	# accepts_nested_attributes_for :comments
	mount_uploader :photo_share, PhotoShareUploader
end