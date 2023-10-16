require 'rails_helper'

RSpec.describe "Tributes", type: :request do
  describe "GET /index" do
    pending "add some examples (or delete) #{__FILE__}"
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
  end

end
