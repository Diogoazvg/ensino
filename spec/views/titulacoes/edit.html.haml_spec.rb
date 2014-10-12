require 'rails_helper'

RSpec.describe "titulacoes/edit", :type => :view do
  before(:each) do
    @titulacao = assign(:titulacao, Titulacao.create!(
      :mestre => "MyString",
      :pos_graduado => "MyString",
      :doutor => "MyString"
    ))
  end

  it "renders the edit titulacao form" do
    render

    assert_select "form[action=?][method=?]", titulacao_path(@titulacao), "post" do

      assert_select "input#titulacao_mestre[name=?]", "titulacao[mestre]"

      assert_select "input#titulacao_pos_graduado[name=?]", "titulacao[pos_graduado]"

      assert_select "input#titulacao_doutor[name=?]", "titulacao[doutor]"
    end
  end
end
