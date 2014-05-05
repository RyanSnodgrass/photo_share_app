class AddInitialTables < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.string :file
  	end
  	create_table :events do |t|
  		t.string :name
  		t.string :location
  		t.date :date
  	end
  	create_table :users do |t|
  		t.string :name
  		t.string :email
  	end
  	create_table :tags do |t|
  		t.string :title
  	end
  	create_table :photos_tags, id: false do |t|
  		t.integer :photo_id
  		t.integer :tag_id
  	end
  end
end
