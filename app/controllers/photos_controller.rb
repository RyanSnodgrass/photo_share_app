class PhotosController < ApplicationController


	def index
		@pics = Photo.all
	end

	def edit
		@pic = Photo.find(params[:id])
	end

	def new
		@new_pic = Photo.new
	end
	def show
		@pic = Photo.find(params[:id])
		@new_comment = @pic.comments.build
		@pic.comments.build
	end

	def create
		@new_pic = Photo.new(photo_params)
		if @new_pic.save
			redirect_to photos_path
		else
			redirect_to new_photo_path
		end
	end

	def update
		@pic = Photo.find(params[:id])
		@pic.update_attributes(params[:id])
	end
	def destroy
		@pic = Photo.find(params[:id])
		@pic.delete!
	end




	
	def upload_pic
		@pic = Photo.find(params[:id])
		@pic.photo_share = params[:file]
		@pic.save!
	end
	def photo_params
		params.require(:photo).permit(:photo_share)
	end

end