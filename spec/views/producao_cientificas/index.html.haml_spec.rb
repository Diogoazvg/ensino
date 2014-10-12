require 'rails_helper'

RSpec.describe "producao_cientificas/index", :type => :view do
  before(:each) do
    assign(:producao_cientificas, [
      ProducaoCientifica.create!(
        :artigo => "Artigo",
        :monografia => "Monografia"
      ),
      ProducaoCientifica.create!(
        :artigo => "Artigo",
        :monografia => "Monografia"
      )
    ])
  end

  it "renders a list of producao_cientificas" do
    render
    assert_select "tr>td", :text => "Artigo".to_s, :count => 2
    assert_select "tr>td", :text => "Monografia".to_s, :count => 2
  end
end
