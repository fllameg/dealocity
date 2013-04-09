class V2dealocityDealsController < ApplicationController
  # GET /v2dealocity_deals
  # GET /v2dealocity_deals.json
  def index
    @v2dealocity_deals = V2dealocityDeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @v2dealocity_deals }
    end
  end

  # GET /v2dealocity_deals/1
  # GET /v2dealocity_deals/1.json
  def show
    @v2dealocity_deal = V2dealocityDeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @v2dealocity_deal }
    end
  end

  # GET /v2dealocity_deals/new
  # GET /v2dealocity_deals/new.json
  def new
    @v2dealocity_deal = V2dealocityDeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @v2dealocity_deal }
    end
  end

  # GET /v2dealocity_deals/1/edit
  def edit
    @v2dealocity_deal = V2dealocityDeal.find(params[:id])
  end

  # POST /v2dealocity_deals
  # POST /v2dealocity_deals.json
  def create
    @v2dealocity_deal = V2dealocityDeal.new(params[:v2dealocity_deal])

    respond_to do |format|
      if @v2dealocity_deal.save
        format.html { redirect_to @v2dealocity_deal, notice: 'V2dealocity deal was successfully created.' }
        format.json { render json: @v2dealocity_deal, status: :created, location: @v2dealocity_deal }
      else
        format.html { render action: "new" }
        format.json { render json: @v2dealocity_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /v2dealocity_deals/1
  # PUT /v2dealocity_deals/1.json
  def update
    @v2dealocity_deal = V2dealocityDeal.find(params[:id])

    respond_to do |format|
      if @v2dealocity_deal.update_attributes(params[:v2dealocity_deal])
        format.html { redirect_to @v2dealocity_deal, notice: 'V2dealocity deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @v2dealocity_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v2dealocity_deals/1
  # DELETE /v2dealocity_deals/1.json
  def destroy
    @v2dealocity_deal = V2dealocityDeal.find(params[:id])
    @v2dealocity_deal.destroy

    respond_to do |format|
      format.html { redirect_to v2dealocity_deals_url }
      format.json { head :no_content }
    end
  end
end
