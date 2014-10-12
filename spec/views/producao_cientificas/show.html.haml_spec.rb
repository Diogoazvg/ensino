require 'rails_helper'

RSpec.describe "producao_cientificas/show", :type => :view do
  before(:each) do
    @producao_cientifica = assign(:producao_cientifica, ProducaoCientifica.create!(
      :artigo => "Artigo",
      :monografia => "Monografia"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Artigo/)
    expect(rendered).to match(/Monografia/)
  end
end
