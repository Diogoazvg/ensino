require 'rails_helper'

RSpec.describe "professores/edit", :type => :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      :nome => "MyString",
      :cpf => 1,
      :telefone => 1,
      :endereco => "MyString"
    ))
  end

  it "renders the edit professor form" do
    render

    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do

      assert_select "input#professor_nome[name=?]", "professor[nome]"

      assert_select "input#professor_cpf[name=?]", "professor[cpf]"

      assert_select "input#professor_telefone[name=?]", "professor[telefone]"

      assert_select "input#professor_endereco[name=?]", "professor[endereco]"
    end
  end
end
