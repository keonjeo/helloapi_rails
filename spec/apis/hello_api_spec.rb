require 'rails_helper'

describe HelloAPI, type: :request do
  it 'should return correct response via GET' do
    get '/api/hello', params: { name: 'Mike' }
    expect(response.status).to eq 200
    body = JSON.parse(response.body)
    expect(body['message']).to eq 'Hello Mike via GET.'
  end

  it 'should return correct response via POST' do
    post '/api/hello', params: { name: 'Mike' }
    expect(response.status).to eq 200
    body = JSON.parse(response.body)
    expect(body['message']).to eq 'Hello Mike via POST.'
  end
end
