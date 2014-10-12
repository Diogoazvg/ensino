require 'rails_helper'

RSpec.describe "Titulacoes", :type => :request do
  describe "GET /titulacoes" do
    it "works! (now write some real specs)" do
      get titulacoes_path
      expect(response.status).to be(200)
    end
  end
end
