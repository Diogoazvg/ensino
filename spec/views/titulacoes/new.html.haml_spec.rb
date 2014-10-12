require 'rails_helper'

RSpec.describe "titulacoes/new", :type => :view do
  before(:each) do
    assign(:titulacao, Titulacao.new(
      :mestre => "MyString",
      :pos_graduado => "MyString",
      :doutor => "MyString"
    ))
  end

  it "renders new titulacao form" do
    render

    assert_select "form[action=?][method=?]", titulacoes_path, "post" do

      assert_select "input#titulacao_mestre[name=?]", "titulacao[mestre]"

      assert_select "input#titulacao_pos_graduado[name=?]", "titulacao[pos_graduado]"

      assert_select "input#titulacao_doutor[name=?]", "titulacao[doutor]"
    end
  end
end
