require "spec_helper"

describe ForemCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/forem_categories").should route_to("forem_categories#index")
    end

    it "routes to #new" do
      get("/forem_categories/new").should route_to("forem_categories#new")
    end

    it "routes to #show" do
      get("/forem_categories/1").should route_to("forem_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forem_categories/1/edit").should route_to("forem_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forem_categories").should route_to("forem_categories#create")
    end

    it "routes to #update" do
      put("/forem_categories/1").should route_to("forem_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forem_categories/1").should route_to("forem_categories#destroy", :id => "1")
    end

  end
end
