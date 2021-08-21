require 'rails_helper'

describe 'Items api', type: :request do
  describe 'Get method' do
    it 'Returns all items' do
      get '/api/v1/items'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'Get method' do
    it 'Returns all items after adding another item' do
      FactoryBot.create(:item, name: 'Shopping', user_id: 1)
      get '/api/v1/items'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end

  describe 'Post method' do
    it 'Create a new user' do
      expect do
        post '/api/v1/items', params: { name: 'Drink', user_id: 1 }
      end.to change { Item.count }.from(1).to(2)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'Delete method' do
    it 'Delete item' do
      # FactoryBot.create(:user,username: "Lina" , password: "123456")
      FactoryBot.create(:item, id: 1, name: 'Eating', user_id: 1)
      delete '/api/v1/items/1'
      expect(response).to have_http_status(:no_content)
    end
  end
end
