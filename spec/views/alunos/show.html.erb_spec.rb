require 'spec_helper'

describe "alunos/show" do
  before(:each) do
    @aluno = assign(:aluno, stub_model(Aluno,
      :matricula => "Matricula",
      :nomealuno => "Nomealuno",
      :sexo => "Sexo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Matricula/)
    rendered.should match(/Nomealuno/)
    rendered.should match(/Sexo/)
  end
end
