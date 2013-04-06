class RateddealsController < ApplicationController
  # GET /rateddeals
  # GET /rateddeals.json
  def index
    @rateddeals = Rateddeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rateddeals }
    end
  end

  # GET /rateddeals/1
  # GET /rateddeals/1.json
  def show
    @rateddeal = Rateddeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rateddeal }
    end
  end

  # GET /rateddeals/new
  # GET /rateddeals/new.json
  def new
    @rateddeal = Rateddeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rateddeal }
    end
  end

  # GET /rateddeals/1/edit
  def edit
    @rateddeal = Rateddeal.find(params[:id])
  end

  # POST /rateddeals
  # POST /rateddeals.json
  def create
    @rateddeal = Rateddeal.new(params[:rateddeal])

    respond_to do |format|
      if @rateddeal.save
        format.html { redirect_to @rateddeal, notice: 'Rateddeal was successfully created.' }
        format.json { render json: @rateddeal, status: :created, location: @rateddeal }
      else
        format.html { render action: "new" }
        format.json { render json: @rateddeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rateddeals/1
  # PUT /rateddeals/1.json
  def update
    @rateddeal = Rateddeal.find(params[:id])

    respond_to do |format|
      if @rateddeal.update_attributes(params[:rateddeal])
        format.html { redirect_to @rateddeal, notice: 'Rateddeal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rateddeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rateddeals/1
  # DELETE /rateddeals/1.json
  def destroy
    @rateddeal = Rateddeal.find(params[:id])
    @rateddeal.destroy

    respond_to do |format|
      format.html { redirect_to rateddeals_url }
      format.json { head :no_content }
    end
  end
end
