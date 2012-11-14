require 'spec_helper'

describe "turmis/show" do
  before(:each) do
    @turmi = assign(:turmi, stub_model(Turmi,
      :aluno => nil,
      :disciplinaprofessor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
