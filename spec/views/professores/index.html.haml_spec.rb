require 'rails_helper'

RSpec.describe "professores/index", :type => :view do
  before(:each) do
    assign(:professores, [
      Professor.create!(
        :nome => "Nome",
        :cpf => 1,
        :telefone => 2,
        :endereco => "Endereco"
      ),
      Professor.create!(
        :nome => "Nome",
        :cpf => 1,
        :telefone => 2,
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of professores" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
