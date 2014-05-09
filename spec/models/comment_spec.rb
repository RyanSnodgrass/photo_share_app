require 'spec_helper'

describe Comment do
	it 'should exist and not explode' do
		c = FactoryGirl.create(:comment)
		c.exist?
end