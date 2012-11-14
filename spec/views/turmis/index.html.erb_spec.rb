require 'spec_helper'

describe "turmis/index" do
  before(:each) do
    assign(:turmis, [
      stub_model(Turmi,
        :aluno => nil,
        :disciplinaprofessor => nil
      ),
      stub_model(Turmi,
        :aluno => nil,
        :disciplinaprofessor => nil
      )
    ])
  end

  it "renders a list of turmis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
