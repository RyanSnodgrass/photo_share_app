class CommentsController < ApplicationController
	def create
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			redirect_to :back #photo_path(@new_comment.photo)
		end
	end
	def comment_params
		params.require(:comment).permit!
	end
end
