class Event < ActiveRecord::Base
	as_many :comments, :as => :commentable
	has_and_belongs_to_many :users
end