require 'spec_helper'

describe Photo do
	it 'should exist' do
	end
	
	it 'should be related to comments' do
		y = FactoryGirl.create(:photo)
		
		y.count.should eq(1)
	end


end