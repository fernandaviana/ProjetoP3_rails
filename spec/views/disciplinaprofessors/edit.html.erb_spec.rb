require 'spec_helper'

describe "disciplinaprofessors/edit" do
  before(:each) do
    @disciplinaprofessor = assign(:disciplinaprofessor, stub_model(Disciplinaprofessor,
      :ano => "MyString",
      :periodo => "MyString",
      :disciplina => nil,
      :professor => nil
    ))
  end

  it "renders the edit disciplinaprofessor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disciplinaprofessors_path(@disciplinaprofessor), :method => "post" do
      assert_select "input#disciplinaprofessor_ano", :name => "disciplinaprofessor[ano]"
      assert_select "input#disciplinaprofessor_periodo", :name => "disciplinaprofessor[periodo]"
      assert_select "input#disciplinaprofessor_disciplina", :name => "disciplinaprofessor[disciplina]"
      assert_select "input#disciplinaprofessor_professor", :name => "disciplinaprofessor[professor]"
    end
  end
end
