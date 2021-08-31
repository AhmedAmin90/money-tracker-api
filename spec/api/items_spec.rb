require 'rails_helper'

describe 'Items api', type: :request do
  describe 'Get method' do
    it 'Returns all items' do
      FactoryBot.create(:user, id: 3, username: 'Test3', password: '123456')
      FactoryBot.create(:item, name: 'Test', user_id: 3)
      get '/api/v1/items'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'Post method' do
    it 'Create a new item' do
      FactoryBot.create(:user, id: 3, username: 'Test3', password: '123456')
      expect do
        post '/api/v1/items', params: { name: 'Drink', user_id: 3 }
      end.to change { Item.count }.from(0).to(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'Delete method' do
    it 'Delete item' do
      FactoryBot.create(:user, id: 3, username: 'Test3', password: '123456')
      FactoryBot.create(:item, id: 1, name: 'Eating', user_id: 3)
      delete '/api/v1/items/1'
      expect(response).to have_http_status(:no_content)
    end
  end
end
