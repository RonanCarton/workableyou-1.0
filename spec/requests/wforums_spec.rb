require 'spec_helper'

describe "Wforums" do
  describe "GET /wforums" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get wforums_path
      response.status.should be(200)
    end
  end
end
