require 'rails_helper'

RSpec.describe "professores/show", :type => :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      :nome => "Nome",
      :cpf => 1,
      :telefone => 2,
      :endereco => "Endereco"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Endereco/)
  end
end
