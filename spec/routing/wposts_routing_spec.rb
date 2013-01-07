require "spec_helper"

describe WpostsController do
  describe "routing" do

    it "routes to #index" do
      get("/wposts").should route_to("wposts#index")
    end

    it "routes to #new" do
      get("/wposts/new").should route_to("wposts#new")
    end

    it "routes to #show" do
      get("/wposts/1").should route_to("wposts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/wposts/1/edit").should route_to("wposts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/wposts").should route_to("wposts#create")
    end

    it "routes to #update" do
      put("/wposts/1").should route_to("wposts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/wposts/1").should route_to("wposts#destroy", :id => "1")
    end

  end
end
