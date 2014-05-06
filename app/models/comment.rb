class Comment < ActiveRecord::Base
	belongs_to :commentable, :polymorphic => true
	# accepts_nested_attributes_for :photo
end