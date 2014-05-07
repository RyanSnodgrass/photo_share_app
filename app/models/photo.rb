class Photo < ActiveRecord::Base
	has_many :comments, :as => :commentable
	has_and_belongs_to_many :tags
	# accepts_nested_attributes_for :comments
	mount_uploader :photo_share, PhotoShareUploader
end