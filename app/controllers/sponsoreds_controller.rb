class SponsoredsController < ApplicationController

http_basic_authenticate_with :name => "Kamrad117", :password => "dagota775", :except => [:index, :show]

  # GET /sponsoreds
  # GET /sponsoreds.json
  def index
    @sponsoreds = Sponsored.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sponsoreds }
    end
  end

  # GET /sponsoreds/1
  # GET /sponsoreds/1.json
  def show
    @sponsored = Sponsored.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sponsored }
    end
  end

  # GET /sponsoreds/new
  # GET /sponsoreds/new.json
  def new
    @sponsored = Sponsored.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sponsored }
    end
  end

  # GET /sponsoreds/1/edit
  def edit
    @sponsored = Sponsored.find(params[:id])

  end

  # POST /sponsoreds
  # POST /sponsoreds.json
  def create
    @sponsored = Sponsored.new(params[:sponsored])

    respond_to do |format|
      if @sponsored.save
        format.html { redirect_to @sponsored, notice: 'Sponsored was successfully created.' }
        format.json { render json: @sponsored, status: :created, location: @sponsored }
      else
        format.html { render action: "new" }
        format.json { render json: @sponsored.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sponsoreds/1
  # PUT /sponsoreds/1.json
  def update
    @sponsored = Sponsored.find(params[:id])

    respond_to do |format|
      if @sponsored.update_attributes(params[:sponsored])
        format.html { redirect_to @sponsored, notice: 'Sponsored was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sponsored.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsoreds/1
  # DELETE /sponsoreds/1.json
  def destroy
    @sponsored = Sponsored.find(params[:id])
    @sponsored.destroy

    respond_to do |format|
      format.html { redirect_to sponsoreds_url }
      format.json { head :no_content }
    end
  end
end
