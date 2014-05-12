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
		it 'should assign photo to @photo' do
			photo = FactoryGirl.create(:photo)
			get :show, id: photo.id
			assigns(:photo).should eq(photo)
		end
	end
	describe 'put update' do
		it 'should update photo' do
			pic = FactoryGirl.create(:photo)
			put :update, id: pic.id, pic:{title: "classroom"}
			assigns(:pic).title.should eq("classroom") #undefined method title for nilclass
		end
	end
end
