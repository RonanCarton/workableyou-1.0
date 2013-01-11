require "spec_helper"

describe ForemViewsController do
  describe "routing" do

    it "routes to #index" do
      get("/forem_views").should route_to("forem_views#index")
    end

    it "routes to #new" do
      get("/forem_views/new").should route_to("forem_views#new")
    end

    it "routes to #show" do
      get("/forem_views/1").should route_to("forem_views#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forem_views/1/edit").should route_to("forem_views#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forem_views").should route_to("forem_views#create")
    end

    it "routes to #update" do
      put("/forem_views/1").should route_to("forem_views#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forem_views/1").should route_to("forem_views#destroy", :id => "1")
    end

  end
end
