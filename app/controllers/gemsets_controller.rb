class GemsetsController < ApplicationController
  # GET /gemsets
  # GET /gemsets.json
  def index
    @gemsets = Gemset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gemsets }
    end
  end

  # GET /gemsets/1
  # GET /gemsets/1.json
  def show
    @gemset = Gemset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gemset }
    end
  end

  # GET /gemsets/new
  # GET /gemsets/new.json
  def new
    @gemset = Gemset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gemset }
    end
  end

  # GET /gemsets/1/edit
  def edit
    @gemset = Gemset.find(params[:id])
    @proyecto = @gemset.proyecto
  end

  # POST /gemsets
  # POST /gemsets.json
  def create
      @gemset = Gemset.new(params[:gemset])

    respond_to do |format|
      if @gemset.save
        format.html { redirect_to @gemset, notice: 'Gemset was successfully created.' }
        format.js { render json: @gemset, status: :created, location: @gemset }
      else
        format.html { render action: "new" }
        format.js { render json: @gemset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gemsets/1
  # PUT /gemsets/1.json
  def update
    @gemset = Gemset.find(params[:id])

    respond_to do |format|
      if @gemset.update_attributes(params[:gemset])
        format.html { redirect_to @gemset, notice: 'Gemset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gemset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gemsets/1
  # DELETE /gemsets/1.json
  def destroy
    @gemset = Gemset.find(params[:id])
    @gemset.destroy

    respond_to do |format|
      format.html { redirect_to gemsets_url }
      format.json { head :no_content }
    end
  end

  def alta_version
    @gemset = Gemset.find(params[:id])
    @version = Version.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end
end
