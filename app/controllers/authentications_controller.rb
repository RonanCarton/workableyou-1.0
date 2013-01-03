class AuthenticationsController < ApplicationController
  def index
    @authentications = current_user.authentications if current_user
  end

  def create
    omniauth = request.env["omniauth.auth"]

    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid']).try(:user)
                                                                                          # added .try(:user)
    #unless authentication
    #  user = create!(
    #      :nickname => omniauth[:info][:nickname],
    #      :email => omniauth[:info][:email])
    #  user.authentications.build(:provider => omniauth[:provider])
    #end

    if authentication
      flash[:notice] = "Signed in successfully."
      sign_in_and_redirect(:user, authentication.user)
    elsif current_user
      current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
      flash[:notice] = "Authentication successful."
      redirect_to authentications_url
    else
      user = User.new
      user.authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
      if user.save
        flash[:notice] = "Signed in successfully."
        sign_in_and_redirect(:user, user)
      else
        session[:omniauth] = omniauth.except('extra')
        redirect_to new_user_registration_url
      end
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Successfully destroyed authentication."
    redirect_to authentications_url
  end

  end
end



#def create
#      @user = User.find_or_create_from_auth_hash(auth_hash)
#      self.current_user = @user
#      redirect_to '/'
#    end
#
#    protected
#
#    def auth_hash
#      request.env['omniauth.auth']
#    end
#end

#  # GET /authentications
#  # GET /authentications.json
#  def index
#    @authentications = current_user.authentications if current_user
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @authentications }
#    end
#  end
#
#  # GET /authentications/1
#  # GET /authentications/1.json
#  def show
#    @authentication = Authentication.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @authentication }
#    end
#  end
#
#  # GET /authentications/new
#  # GET /authentications/new.json
#  def new
#    @authentication = Authentication.new
#
#    respond_to do |format|
#      format.html # new.html.erb
#      format.json { render json: @authentication }
#    end
#  end
#
#  # GET /authentications/1/edit
#  def edit
#    @authentication = Authentication.find(params[:id])
#  end
#
#  # POST /authentications
#  # POST /authentications.json
#  def create
#    render :text => request.env["omniauth.auth"]
#    auth = request.env["omniauth.auth"]; current_user.authentications.create(:provider => auth['provider'], :uid => auth['uid'])
#    flash[:notice] = "Authentication successful."
#    redirect_to authentications_url  # delete this 24/12/12
#
#    @authentication = Authentication.new(params[:authentication])
#
#    respond_to do |format|
#      if @authentication.save
#        format.html { redirect_to @authentication, notice: 'Authentication was successfully created.' }
#        format.json { render json: @authentication, status: :created, location: @authentication }
#      else
#        format.html { render action: "new" }
#        format.json { render json: @authentication.errors, status: :unprocessable_entity }
#      end
#    end
#
#  end
#
#  # PUT /authentications/1
#  # PUT /authentications/1.json
#  def update
#    @authentication = Authentication.find(params[:id])
#
#    respond_to do |format|
#      if @authentication.update_attributes(params[:authentication])
#        format.html { redirect_to @authentication, notice: 'Authentication was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @authentication.errors, status: :unprocessable_entity }
#      end
#    end
#  end
#
#  # DELETE /authentications/1
#  # DELETE /authentications/1.json
#  def destroy
#    @authentication = current_user.authentications.find(params[:id])
#    @authentication.destroy
#    flash[:notice] = "Successfully destroyed authentication."
#    redirect_to authentications_url
#
#    respond_to do |format|
#      format.html { redirect_to authentications_url }
#      format.json { head :no_content }
#    end
#  end
#end
