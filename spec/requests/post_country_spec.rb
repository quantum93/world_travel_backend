require 'rails_helper'

describe "post a country route", :type => :request do

  before do
    post '/v1/countries', params: { :name => 'Alex Land'}
  end

  it 'returns the country name' do
    expect(JSON.parse(response.body)['name']).to eq('Alex Land')
  end

  it 'returns a success status' do
    # byebug
    # expect(response).to have_http_status(:created)
    expect(response).to have_http_status(:success)
  end
end
