require "rails_helper"

RSpec.describe ProducaoCientificasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/producao_cientificas").to route_to("producao_cientificas#index")
    end

    it "routes to #new" do
      expect(:get => "/producao_cientificas/new").to route_to("producao_cientificas#new")
    end

    it "routes to #show" do
      expect(:get => "/producao_cientificas/1").to route_to("producao_cientificas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/producao_cientificas/1/edit").to route_to("producao_cientificas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/producao_cientificas").to route_to("producao_cientificas#create")
    end

    it "routes to #update" do
      expect(:put => "/producao_cientificas/1").to route_to("producao_cientificas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/producao_cientificas/1").to route_to("producao_cientificas#destroy", :id => "1")
    end

  end
end
