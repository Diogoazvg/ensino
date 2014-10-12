require 'rails_helper'

RSpec.describe "ProducaoCientificas", :type => :request do
  describe "GET /producao_cientificas" do
    it "works! (now write some real specs)" do
      get producao_cientificas_path
      expect(response.status).to be(200)
    end
  end
end
