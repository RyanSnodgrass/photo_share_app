require 'spec_helper'

describe User do 
	it 'should be invalid without a name' do
		y = User.new
		y.should_not be_valid
	end
	it 'should be invalid without a password' do
		y = User.new
		y.name = "harry"
		y.should_not be_valid
	end
	# it 'should check for '
end

#users should be able to login