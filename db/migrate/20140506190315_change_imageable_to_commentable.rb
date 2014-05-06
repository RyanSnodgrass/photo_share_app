class ChangeImageableToCommentable < ActiveRecord::Migration
  def change
  	rename_column :comments, :imageable_id, :commentable_id
  	rename_column :comments, :imageable_type, :commentable_type
  end
end
