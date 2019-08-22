require 'rails_helper'
FactoryBot.find_definitions

describe "get all countries route", :type => :request do
  let!(:countries) { FactoryBot.create(:country)}

  before { get '/v1/countries'}

  it 'returns all countries' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
