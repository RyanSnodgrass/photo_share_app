class CommentsController < ApplicationController
	def create
		@new_comment = Comment.new(comment_params)
		if @new_comment.save
			redirect_to :back
		end
	end
end
