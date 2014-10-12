require 'rails_helper'

RSpec.describe Professor, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "can be instantiated" do
  	professor = Professor.new
  	expect(professor).to be_a Professor
  end	
end
