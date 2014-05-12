require 'spec_helper'

describe Comment do
	it 'should exist and not explode' do
		c = FactoryGirl.create(:comment)
		c.should_not eq(nil)
	end
end