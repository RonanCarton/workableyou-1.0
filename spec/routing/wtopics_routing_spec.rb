require "spec_helper"

describe WtopicsController do
  describe "routing" do

    it "routes to #index" do
      get("/wtopics").should route_to("wtopics#index")
    end

    it "routes to #new" do
      get("/wtopics/new").should route_to("wtopics#new")
    end

    it "routes to #show" do
      get("/wtopics/1").should route_to("wtopics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/wtopics/1/edit").should route_to("wtopics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/wtopics").should route_to("wtopics#create")
    end

    it "routes to #update" do
      put("/wtopics/1").should route_to("wtopics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/wtopics/1").should route_to("wtopics#destroy", :id => "1")
    end

  end
end
