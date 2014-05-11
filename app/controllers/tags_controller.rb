class TagsController < ApplicationController
	
	def index
		@tags = Tag.all
	end
	def show
		@tag = Tag.find(params[:id])
		@related_pics = @tag.photos
	end
	def new
		@new_tag = Tag.new
	end
	def edit
		@tag = Tag.find(params[:id])
	end
	# def create
	# 	@new_tag = Tag.new(tag_parmas)
	# 	if @new_tag.save
	# 		redirect_to tags_path
	# 	else
	# 		redirect_to new_tags_path
	# 	end
	# end
	def update
		@tag = tag.find(params[:id])
		if @tag.update_attributes(tag_params)
			redirect_to tag_path(@tag)
		else
			render edit_tag_path
		end
	end
	def destroy
		@tag = tag.find(params[:id])
		if @tag.destroy!
			redirect_to tags_path
		else
			redirect_to :back
		end
	end

	def create
		this_id = (tag_params.first.second)
		# this_id = this_array.second

		@tag = Tag.where(title: tag_params[:title]).first_or_create
		@pic = Photo.find(this_id)
		@pic.tags.build
		@pic.tags << @tag
		redirect_to :back
	end
	
	def tag_params
		params.require(:tag).permit! #(:title, :photo_id)
	end


end