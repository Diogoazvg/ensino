require 'rails_helper'

RSpec.describe "professores/new", :type => :view do
  before(:each) do
    assign(:professor, Professor.new(
      :nome => "MyString",
      :cpf => 1,
      :telefone => 1,
      :endereco => "MyString"
    ))
  end

  it "renders new professor form" do
    render

    assert_select "form[action=?][method=?]", professores_path, "post" do

      assert_select "input#professor_nome[name=?]", "professor[nome]"

      assert_select "input#professor_cpf[name=?]", "professor[cpf]"

      assert_select "input#professor_telefone[name=?]", "professor[telefone]"

      assert_select "input#professor_endereco[name=?]", "professor[endereco]"
    end
  end
end
