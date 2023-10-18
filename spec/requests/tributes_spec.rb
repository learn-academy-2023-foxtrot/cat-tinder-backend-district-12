require 'rails_helper'

RSpec.describe "Tributes", type: :request do
  describe "GET /index" do
      it "gets a list of tributes" do
        Tribute.create(
          name: 'Katniss Everdeen', 
          age: 16, 
          hobby: 'shooting up birds and squirrels', 
          image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
          district: 'District 12'
        )

        # Make a request
        get '/tributes'

        tribute = JSON.parse(response.body)
        expect(response).to have_http_status(200)
        expect(tribute.length).to eq 1
      end
    end
    describe "POST /create" do
      it "creates a tribute" do 
        tribute_param = {
          tribute: {
            name: 'Katniss Everdeen', 
            age: 16, 
            hobby: 'shooting up birds and squirrels', 
            image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
            district: 'District 12'
          }
        }
        post '/tributes', params: tribute_params
        expect(response).to have_http_status(200)
        tribute = Tribute.first
        expect(tribute.name).to eq 'Katniss Everdeen'
      end
      it 'creates a new tribute' do
        tribute_params = {
          tribute: {
            name: nil,
            age: 16, 
            hobby: 'shooting', 
            image: 'https://live.staticflickr.com/606/21731063948_c2bdd0aef6_b.jpg', 
            district: 'District 12'
          }
        }
        post '/tribute', params: tribute_params
        expect(response.status).to eq 422
        tribute_error = JSON.parse(response.body)
        expect(tribute_error['name']).to include "can't be blank"
      end
    end
  end

