require 'rails_helper'

describe 'Expenses api', type: :request do
  describe 'Get method' do
    it 'Returns all expenses' do
      FactoryBot.create(:item, id: 1, name: 'Sport', user_id: 1)
      FactoryBot.create(:expense, expense: 50, item_id: 1)
      get '/api/v1/expenses'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'Get method' do
    it 'Returns all expenses after adding another expense' do
      FactoryBot.create(:item, id: 1, name: 'Sport', user_id: 1)
      FactoryBot.create(:expense, expense: 50, item_id: 1)
      FactoryBot.create(:expense, expense: 30, item_id: 1)

      get '/api/v1/expenses'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end

  describe 'Post method' do
    it 'Create a new expense' do
      FactoryBot.create(:item, id: 1, name: 'Shoping', user_id: 1)
      expect do
        post '/api/v1/expenses', params: { expense: 30, item_id: 1 }
      end.to change { Expense.count }.from(0).to(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe 'Delete method' do
    it 'Delete expense' do
      FactoryBot.create(:item, id: 1, name: 'cafe', user_id: 1)
      FactoryBot.create(:expense, id: 1, expense: 50, item_id: 1)
      delete '/api/v1/expenses/1'
      expect(response).to have_http_status(:no_content)
    end
  end
end
