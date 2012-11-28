class HomeController < ApplicationController
  def index
    #redirect_to forums_engine.root_url

    @users = User.all
  end
end
