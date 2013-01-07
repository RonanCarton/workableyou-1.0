class WtopicsController < ApplicationController
  # GET /wtopics
  # GET /wtopics.json
  def index
    @wtopics = Wtopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wtopics }
    end
  end

  # GET /wtopics/1
  # GET /wtopics/1.json
  def show
    @wtopic = Wtopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wtopic }
    end
  end

  # GET /wtopics/new
  # GET /wtopics/new.json
  def new
    @wtopic = Wtopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wtopic }
    end
  end

  # GET /wtopics/1/edit
  def edit
    @wtopic = Wtopic.find(params[:id])
  end

  # POST /wtopics
  # POST /wtopics.json
  def create
    @wtopic = Wtopic.new(params[:wtopic])

    respond_to do |format|
      if @wtopic.save
        format.html { redirect_to @wtopic, notice: 'Wtopic was successfully created.' }
        format.json { render json: @wtopic, status: :created, location: @wtopic }
      else
        format.html { render action: "new" }
        format.json { render json: @wtopic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wtopics/1
  # PUT /wtopics/1.json
  def update
    @wtopic = Wtopic.find(params[:id])

    respond_to do |format|
      if @wtopic.update_attributes(params[:wtopic])
        format.html { redirect_to @wtopic, notice: 'Wtopic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wtopic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wtopics/1
  # DELETE /wtopics/1.json
  def destroy
    @wtopic = Wtopic.find(params[:id])
    @wtopic.destroy

    respond_to do |format|
      format.html { redirect_to wtopics_url }
      format.json { head :no_content }
    end
  end
end
