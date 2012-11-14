require "spec_helper"

describe TurmisController do
  describe "routing" do

    it "routes to #index" do
      get("/turmis").should route_to("turmis#index")
    end

    it "routes to #new" do
      get("/turmis/new").should route_to("turmis#new")
    end

    it "routes to #show" do
      get("/turmis/1").should route_to("turmis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/turmis/1/edit").should route_to("turmis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/turmis").should route_to("turmis#create")
    end

    it "routes to #update" do
      put("/turmis/1").should route_to("turmis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/turmis/1").should route_to("turmis#destroy", :id => "1")
    end

  end
end
