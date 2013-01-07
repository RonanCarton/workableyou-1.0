class WpostsController < ApplicationController
  # GET /wposts
  # GET /wposts.json
  def index
    @wposts = Wpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wposts }
    end
  end

  # GET /wposts/1
  # GET /wposts/1.json
  def show
    @wpost = Wpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wpost }
    end
  end

  # GET /wposts/new
  # GET /wposts/new.json
  def new
    @wpost = Wpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wpost }
    end
  end

  # GET /wposts/1/edit
  def edit
    @wpost = Wpost.find(params[:id])
  end

  # POST /wposts
  # POST /wposts.json
  def create
    @wpost = Wpost.new(params[:wpost])

    respond_to do |format|
      if @wpost.save
        format.html { redirect_to @wpost, notice: 'Wpost was successfully created.' }
        format.json { render json: @wpost, status: :created, location: @wpost }
      else
        format.html { render action: "new" }
        format.json { render json: @wpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wposts/1
  # PUT /wposts/1.json
  def update
    @wpost = Wpost.find(params[:id])

    respond_to do |format|
      if @wpost.update_attributes(params[:wpost])
        format.html { redirect_to @wpost, notice: 'Wpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wposts/1
  # DELETE /wposts/1.json
  def destroy
    @wpost = Wpost.find(params[:id])
    @wpost.destroy

    respond_to do |format|
      format.html { redirect_to wposts_url }
      format.json { head :no_content }
    end
  end
end
