require "spec_helper"

describe ForemSubscriptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/forem_subscriptions").should route_to("forem_subscriptions#index")
    end

    it "routes to #new" do
      get("/forem_subscriptions/new").should route_to("forem_subscriptions#new")
    end

    it "routes to #show" do
      get("/forem_subscriptions/1").should route_to("forem_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forem_subscriptions/1/edit").should route_to("forem_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forem_subscriptions").should route_to("forem_subscriptions#create")
    end

    it "routes to #update" do
      put("/forem_subscriptions/1").should route_to("forem_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forem_subscriptions/1").should route_to("forem_subscriptions#destroy", :id => "1")
    end

  end
end
