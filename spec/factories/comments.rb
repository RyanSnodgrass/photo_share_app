FactoryGirl.define do
	Factory.define :comment do |comment|
		comment.content "wow that looked cool"
		comment.commentable { |c| c.association(:photo)}
	end
end
