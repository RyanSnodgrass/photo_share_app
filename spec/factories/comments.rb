# FactoryGirl.define do
# 	Factory.define :comment do |comment|
# 		comment.content "wow that looked cool"
# 		comment.commentable { |c| c.association(:photo)}
# 	end
# end

# .association is a factory girl defined method

# in short form you can try this


FactoryGirl.define do

  factory :comment do
    content "wow that looked cool"
    association :commentable, :factory => :photo
  end
end


### this makes sense now