require 'spec_helper'

describe "disciplinas/index" do
  before(:each) do
    assign(:disciplinas, [
      stub_model(Disciplina,
        :nomedisciplina => "Nomedisciplina",
        :sigla => "Sigla",
        :cargahoraria => "Cargahoraria",
        :periodo => "Periodo"
      ),
      stub_model(Disciplina,
        :nomedisciplina => "Nomedisciplina",
        :sigla => "Sigla",
        :cargahoraria => "Cargahoraria",
        :periodo => "Periodo"
      )
    ])
  end

  it "renders a list of disciplinas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomedisciplina".to_s, :count => 2
    assert_select "tr>td", :text => "Sigla".to_s, :count => 2
    assert_select "tr>td", :text => "Cargahoraria".to_s, :count => 2
    assert_select "tr>td", :text => "Periodo".to_s, :count => 2
  end
end
