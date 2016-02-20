require 'rails_helper'
require'random_data'

RSpec.describe AdvertisementController, type: :controller do

  let(:adv) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [adv] to @advertisements" do
       get :index

       expect(assigns(:advertisements)).to eq([adv])
     end
  end

  describe "GET #show" do
    it "returns http success" do

      get :show, {id: adv.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the show view" do

      get :show, {id: adv.id}
      expect(response).to render_template :show
    end

    it "assigns my_post to @posts" do
      get :show, {id: adv.id}

      expect(assigns(:advertisement)).to eq(adv)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "increases the number of ads by 1" do
      expect{post :create, advertisement: {title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number}}.to change(Advertisement,:count).by(1)
    end

    it "assigns the new ads to @advertisements" do
      post :create, advertisement: {title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number}
      expect(assigns(:advertisement)).to eq Advertisement.last
    end

    it "reedirects to the new ad" do
      post :create, advertisement: {title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_number}
      expect(response).to redirect_to Advertisement.last
    end
  end
end
