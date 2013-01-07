class WforumsController < ApplicationController
  #GET /wforums
  #GET /wforums.json
  def index
    @wforums = Wforum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wforums }
    end
  end

  # GET /wforums/1
  # GET /wforums/1.json
  def show
    @wforum = Wforum.find_by_permalink(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wforum }
    end
  end

  # GET /wforums/new
  # GET /wforums/new.json
  def new
    @wforum = Wforum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wforum }
    end
  end

  # GET /wforums/1/edit
  def edit
    @wforum = Wforum.find_by_permalink(params[:id])
  end

  # POST /wforums
  # POST /wforums.json
  def create
    @wforum = Wforum.new(params[:wforum])

    respond_to do |format|
      if @wforum.save
        format.html { redirect_to @wforum, notice: 'Forum was successfully created.' }
        format.json { render json: @wforum, status: :created, location: @wforum }
      else
        format.html { render action: "new" }
        format.json { render json: @wforum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wforums/1
  # PUT /wforums/1.json
  def update
    @wforum = Wforum.find_by_permalink(params[:id])

    respond_to do |format|
      if @wforum.update_attributes(params[:wforum])
        format.html { redirect_to @wforum, notice: 'Forum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wforum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wforums/1
  # DELETE /wforums/1.json
  def destroy
    @wforum = Wforum.find_by_permalink(params[:id])
    @wforum.destroy

    respond_to do |format|
      format.html { redirect_to wforums_url }
      format.json { head :no_content }
    end
  end
end
