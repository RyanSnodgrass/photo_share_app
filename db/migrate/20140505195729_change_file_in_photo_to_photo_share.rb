class ChangeFileInPhotoToPhotoShare < ActiveRecord::Migration
  def change
  	rename_column :photos, :file, :photo_share
  end
end
