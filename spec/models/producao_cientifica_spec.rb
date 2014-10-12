require 'rails_helper'

RSpec.describe ProducaoCientifica, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "can be instantiated" do
  	producaoCientifica = ProducaoCientifica.new
  	expect(producaoCientifica).to be_a ProducaoCientifica
  end
end
