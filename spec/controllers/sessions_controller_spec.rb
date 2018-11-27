# frozen_string_literal: true

require 'rails_helper'
require 'pry'

RSpec.describe 'POST /users/sign_in', type: :request do

  let!(:user) { FactoryBot.create(:user) }
  let(:url) { '/users/sign_in' }
  let(:params) do
    {
      user: {
        email: user.email,
        password: user.password
      }
    }
  end

  context 'when params are correct' do

    before { post url, params: params }

    it 'returns 200' do
      binding.pry
      FactoryBot.create(:user)
      expect(response).to have_http_status(200)
    end

    it 'returns JTW toekn in authorization header' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns valid JWT token' do
      decoded_token = decoded_jwt_token_from_response(response)
      expect(decoded_token.first['sub']).to be_present
    end
  end

  context 'when login params are incorrect' do
    before { post url }

    it 'returns unauthorized status' do
      expect(response.status).to eq 401
    end
  end
end

RSpec.describe 'DELETE /logout', type: :request do
  let(:url) { 'users/sign_out' }

  it 'returns 204, no content' do
    delete url
    expect(response).to have_http_status(204)
  end
end
