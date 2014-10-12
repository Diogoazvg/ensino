require 'rails_helper'

RSpec.describe "titulacoes/show", :type => :view do
  before(:each) do
    @titulacao = assign(:titulacao, Titulacao.create!(
      :mestre => "Mestre",
      :pos_graduado => "Pos_graduado",
      :doutor => "Doutor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mestre/)
    expect(rendered).to match(/Pos_graduado/)
    expect(rendered).to match(/Doutor/)
  end
end
