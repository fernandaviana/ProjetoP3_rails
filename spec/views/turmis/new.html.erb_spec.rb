require 'spec_helper'

describe "turmis/new" do
  before(:each) do
    assign(:turmi, stub_model(Turmi,
      :aluno => nil,
      :disciplinaprofessor => nil
    ).as_new_record)
  end

  it "renders new turmi form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => turmis_path, :method => "post" do
      assert_select "input#turmi_aluno", :name => "turmi[aluno]"
      assert_select "input#turmi_disciplinaprofessor", :name => "turmi[disciplinaprofessor]"
    end
  end
end
