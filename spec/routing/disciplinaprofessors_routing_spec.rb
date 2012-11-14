require "spec_helper"

describe DisciplinaprofessorsController do
  describe "routing" do

    it "routes to #index" do
      get("/disciplinaprofessors").should route_to("disciplinaprofessors#index")
    end

    it "routes to #new" do
      get("/disciplinaprofessors/new").should route_to("disciplinaprofessors#new")
    end

    it "routes to #show" do
      get("/disciplinaprofessors/1").should route_to("disciplinaprofessors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/disciplinaprofessors/1/edit").should route_to("disciplinaprofessors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/disciplinaprofessors").should route_to("disciplinaprofessors#create")
    end

    it "routes to #update" do
      put("/disciplinaprofessors/1").should route_to("disciplinaprofessors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/disciplinaprofessors/1").should route_to("disciplinaprofessors#destroy", :id => "1")
    end

  end
end
