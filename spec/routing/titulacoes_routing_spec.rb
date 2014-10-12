require "rails_helper"

RSpec.describe TitulacoesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/titulacoes").to route_to("titulacoes#index")
    end

    it "routes to #new" do
      expect(:get => "/titulacoes/new").to route_to("titulacoes#new")
    end

    it "routes to #show" do
      expect(:get => "/titulacoes/1").to route_to("titulacoes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/titulacoes/1/edit").to route_to("titulacoes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/titulacoes").to route_to("titulacoes#create")
    end

    it "routes to #update" do
      expect(:put => "/titulacoes/1").to route_to("titulacoes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/titulacoes/1").to route_to("titulacoes#destroy", :id => "1")
    end

  end
end
