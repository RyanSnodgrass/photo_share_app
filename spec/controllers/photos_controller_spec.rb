require 'spec_helper'

describe PhotosController do

	describe "GET #index" do
		it 'assigns a collection of photos' do
			FactoryGirl.create(:photo)
			get :index
			assigns(:pics).count.should eq(1)
		end


		it 'renders the index page' do
			get :index
			response.should render_template :index
		end
	end
end
