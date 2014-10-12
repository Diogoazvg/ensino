require 'rails_helper'

RSpec.describe Professor, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "can be instantiated" do
  	titulacao = Titulacao.new
  	expect(titulacao).to be_a Titulacao
  end	
end
