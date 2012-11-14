require 'spec_helper'

describe "turmis/edit" do
  before(:each) do
    @turmi = assign(:turmi, stub_model(Turmi,
      :aluno => nil,
      :disciplinaprofessor => nil
    ))
  end

  it "renders the edit turmi form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => turmis_path(@turmi), :method => "post" do
      assert_select "input#turmi_aluno", :name => "turmi[aluno]"
      assert_select "input#turmi_disciplinaprofessor", :name => "turmi[disciplinaprofessor]"
    end
  end
end
