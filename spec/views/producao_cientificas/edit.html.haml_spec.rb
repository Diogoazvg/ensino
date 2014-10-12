require 'rails_helper'

RSpec.describe "producao_cientificas/edit", :type => :view do
  before(:each) do
    @producao_cientifica = assign(:producao_cientifica, ProducaoCientifica.create!(
      :artigo => "MyString",
      :monografia => "MyString"
    ))
  end

  it "renders the edit producao_cientifica form" do
    render

    assert_select "form[action=?][method=?]", producao_cientifica_path(@producao_cientifica), "post" do

      assert_select "input#producao_cientifica_artigo[name=?]", "producao_cientifica[artigo]"

      assert_select "input#producao_cientifica_monografia[name=?]", "producao_cientifica[monografia]"
    end
  end
end
