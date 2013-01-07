require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WtopicsController do

  # This should return the minimal set of attributes required to create a valid
  # Wtopic. As you add validations to Wtopic, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "wforum_id" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WtopicsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all wtopics as @wtopics" do
      wtopic = Wtopic.create! valid_attributes
      get :index, {}, valid_session
      assigns(:wtopics).should eq([wtopic])
    end
  end

  describe "GET show" do
    it "assigns the requested wtopic as @wtopic" do
      wtopic = Wtopic.create! valid_attributes
      get :show, {:id => wtopic.to_param}, valid_session
      assigns(:wtopic).should eq(wtopic)
    end
  end

  describe "GET new" do
    it "assigns a new wtopic as @wtopic" do
      get :new, {}, valid_session
      assigns(:wtopic).should be_a_new(Wtopic)
    end
  end

  describe "GET edit" do
    it "assigns the requested wtopic as @wtopic" do
      wtopic = Wtopic.create! valid_attributes
      get :edit, {:id => wtopic.to_param}, valid_session
      assigns(:wtopic).should eq(wtopic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Wtopic" do
        expect {
          post :create, {:wtopic => valid_attributes}, valid_session
        }.to change(Wtopic, :count).by(1)
      end

      it "assigns a newly created wtopic as @wtopic" do
        post :create, {:wtopic => valid_attributes}, valid_session
        assigns(:wtopic).should be_a(Wtopic)
        assigns(:wtopic).should be_persisted
      end

      it "redirects to the created wtopic" do
        post :create, {:wtopic => valid_attributes}, valid_session
        response.should redirect_to(Wtopic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved wtopic as @wtopic" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wtopic.any_instance.stub(:save).and_return(false)
        post :create, {:wtopic => { "wforum_id" => "invalid value" }}, valid_session
        assigns(:wtopic).should be_a_new(Wtopic)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Wtopic.any_instance.stub(:save).and_return(false)
        post :create, {:wtopic => { "wforum_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested wtopic" do
        wtopic = Wtopic.create! valid_attributes
        # Assuming there are no other wtopics in the database, this
        # specifies that the Wtopic created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Wtopic.any_instance.should_receive(:update_attributes).with({ "wforum_id" => "1" })
        put :update, {:id => wtopic.to_param, :wtopic => { "wforum_id" => "1" }}, valid_session
      end

      it "assigns the requested wtopic as @wtopic" do
        wtopic = Wtopic.create! valid_attributes
        put :update, {:id => wtopic.to_param, :wtopic => valid_attributes}, valid_session
        assigns(:wtopic).should eq(wtopic)
      end

      it "redirects to the wtopic" do
        wtopic = Wtopic.create! valid_attributes
        put :update, {:id => wtopic.to_param, :wtopic => valid_attributes}, valid_session
        response.should redirect_to(wtopic)
      end
    end

    describe "with invalid params" do
      it "assigns the wtopic as @wtopic" do
        wtopic = Wtopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Wtopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => wtopic.to_param, :wtopic => { "wforum_id" => "invalid value" }}, valid_session
        assigns(:wtopic).should eq(wtopic)
      end

      it "re-renders the 'edit' template" do
        wtopic = Wtopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Wtopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => wtopic.to_param, :wtopic => { "wforum_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested wtopic" do
      wtopic = Wtopic.create! valid_attributes
      expect {
        delete :destroy, {:id => wtopic.to_param}, valid_session
      }.to change(Wtopic, :count).by(-1)
    end

    it "redirects to the wtopics list" do
      wtopic = Wtopic.create! valid_attributes
      delete :destroy, {:id => wtopic.to_param}, valid_session
      response.should redirect_to(wtopics_url)
    end
  end

end
