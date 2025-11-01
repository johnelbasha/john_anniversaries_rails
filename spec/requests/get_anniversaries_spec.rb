RSpec.describe 'Requests to Api::V1::AnniversariesController', type: :request do
  describe 'GET api/v1/anniversaries' do
    context 'without any additional authentication/security layers' do # I have given it this name to ensure I come back and add authentication and other security layers later
      it 'returns all anniversary records' do
        get '/api/v1/anniversaries'

        anniversaries = Anniversary.all

        expect(response).to have_http_status(:ok)

        json = JSON.parse(response.body)

        expect(json.size).to eq(birthdays.size)

        expected_keys = Anniversary.column_names
        
        json.each do |record|
          expect(record.keys).to match_array(expected_keys)
        end
      end
    end
  end
end