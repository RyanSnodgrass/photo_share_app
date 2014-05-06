class Event < ActiveRecord::Base
	has_many :comments, :as => :commentable
	# has_and_belongs_to_many :users
end