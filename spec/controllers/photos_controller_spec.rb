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
	describe 'get show' do
		it 'should assigns photo to @pic' do
			photo = FactoryGirl.create(:photo)
			get :show, id: photo.id
			assigns(:pic).should eq(photo)
		end
	end
	describe 'put update' do
		it 'should update photo' do
			photo = FactoryGirl.create(:photo)
			put :update, id: photo.id, photo:{title: "classroom"}
			assigns(:pic).title.should eq("classroom") #undefined method title for nilclass
		end
	end
end
