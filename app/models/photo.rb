class Photo < ActiveRecord::Base
	mount_uploader :photo_share, PhotoShareUploader
end