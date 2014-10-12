require 'rails_helper'

RSpec.describe "titulacoes/index", :type => :view do
  before(:each) do
    assign(:titulacoes, [
      Titulacao.create!(
        :mestre => "Mestre",
        :pos => "Pos",
        :doutor => "Doutor"
      ),
      Titulacao.create!(
        :mestre => "Mestre",
        :pos => "Pos",
        :doutor => "Doutor"
      )
    ])
  end

  it "renders a list of titulacoes" do
    render
    assert_select "tr>td", :text => "Mestre".to_s, :count => 2
    assert_select "tr>td", :text => "Pos".to_s, :count => 2
    assert_select "tr>td", :text => "Doutor".to_s, :count => 2
  end
end
