require 'rails_helper'

RSpec.describe "producao_cientificas/new", :type => :view do
  before(:each) do
    assign(:producao_cientifica, ProducaoCientifica.new(
      :artigo => "MyString",
      :monografia => "MyString"
    ))
  end

  it "renders new producao_cientifica form" do
    render

    assert_select "form[action=?][method=?]", producao_cientificas_path, "post" do

      assert_select "input#producao_cientifica_artigo[name=?]", "producao_cientifica[artigo]"

      assert_select "input#producao_cientifica_monografia[name=?]", "producao_cientifica[monografia]"
    end
  end
end
