require 'spec_helper'

describe "telefones/show" do
  before(:each) do
    @telefone = assign(:telefone, stub_model(Telefone,
      :ddd => "Ddd",
      :numerotelefone => "Numerotelefone",
      :aluno => nil,
      :tipotelefone => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ddd/)
    rendered.should match(/Numerotelefone/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
