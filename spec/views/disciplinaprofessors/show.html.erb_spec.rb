require 'spec_helper'

describe "disciplinaprofessors/show" do
  before(:each) do
    @disciplinaprofessor = assign(:disciplinaprofessor, stub_model(Disciplinaprofessor,
      :ano => "Ano",
      :periodo => "Periodo",
      :disciplina => nil,
      :professor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ano/)
    rendered.should match(/Periodo/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
