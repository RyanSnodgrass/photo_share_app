require 'spec_helper'

describe User do 
	it 'should be invalid without a name' do
		y = User.new
		y.should_not be_valid
	end
end

#users should be able to login