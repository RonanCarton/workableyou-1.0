require "spec_helper"

describe WforumsController do
  describe "routing" do

    it "routes to #index" do
      get("/wforums").should route_to("wforums#index")
    end

    it "routes to #new" do
      get("/wforums/new").should route_to("wforums#new")
    end

    it "routes to #show" do
      get("/wforums/1").should route_to("wforums#show", :id => "1")
    end

    it "routes to #edit" do
      get("/wforums/1/edit").should route_to("wforums#edit", :id => "1")
    end

    it "routes to #create" do
      post("/wforums").should route_to("wforums#create")
    end

    it "routes to #update" do
      put("/wforums/1").should route_to("wforums#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/wforums/1").should route_to("wforums#destroy", :id => "1")
    end

  end
end
