require 'spec_helper'

describe "disciplinaprofessors/index" do
  before(:each) do
    assign(:disciplinaprofessors, [
      stub_model(Disciplinaprofessor,
        :ano => "Ano",
        :periodo => "Periodo",
        :disciplina => nil,
        :professor => nil
      ),
      stub_model(Disciplinaprofessor,
        :ano => "Ano",
        :periodo => "Periodo",
        :disciplina => nil,
        :professor => nil
      )
    ])
  end

  it "renders a list of disciplinaprofessors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ano".to_s, :count => 2
    assert_select "tr>td", :text => "Periodo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
