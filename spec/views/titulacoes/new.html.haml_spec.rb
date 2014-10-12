require 'rails_helper'

RSpec.describe "titulacoes/new", :type => :view do
  before(:each) do
    assign(:titulacao, Titulacao.new(
      :mestre => "MyString",
      :pos => "MyString",
      :doutor => "MyString"
    ))
  end

  it "renders new titulacao form" do
    render

    assert_select "form[action=?][method=?]", titulacoes_path, "post" do

      assert_select "input#titulacao_mestre[name=?]", "titulacao[mestre]"

      assert_select "input#titulacao_pos[name=?]", "titulacao[pos]"

      assert_select "input#titulacao_doutor[name=?]", "titulacao[doutor]"
    end
  end
end
