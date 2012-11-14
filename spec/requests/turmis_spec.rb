require 'spec_helper'

describe "Turmis" do
  describe "GET /turmis" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get turmis_path
      response.status.should be(200)
    end
  end
end
