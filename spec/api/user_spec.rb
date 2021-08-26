require 'rails_helper'

describe 'users api', type: :request do
  describe 'Get method' do
    it 'Returns all users' do
      FactoryBot.build(:user, username: 'Test', password: '123456')
      get '/users'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'Get method' do
    it 'Returns all users after adding another user' do
      FactoryBot.create(:user, username: 'Ali', password: '123456')
      get '/users'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end

  describe 'Post method' do
    it 'Create a new user' do
      expect do
        post '/users', params: { username: 'Ali', password: '123456' }
      end.to change { User.count }.from(1).to(2)
      expect(response).to have_http_status(:created)
    end
  end
end
