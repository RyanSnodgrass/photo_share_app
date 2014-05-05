class PhotosController < ApplicationController

	def index
		@pics = Photo.all
	end
	def edit
		@pic = Photo.find(params[:id])
	end
	def new
		@pic = Photo.new(photo_params)
		if @pic.save
			redirect_to photos_path
	end
	def update
		@pic = Photo.find(params[:id])
		@pic.update_attributes(params[:id])
	end
	def destroy
		@pic = Photo.find(params[:id])
		@pic.delete!
	end

	def 

	def show
		@pic = Photo.find(params[:id])
	end
	
	def upload_pic
		@pic = Photo.new
		@pic.photo_share = params[:file]
		@pic.save!
	end
	def photo_params
		params.require(:photo).permit!
	end

end