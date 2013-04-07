class DealocityDealsController < ApplicationController
  # GET /dealocity_deals
  # GET /dealocity_deals.json
  def index
    @dealocity_deals = DealocityDeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dealocity_deals }
    end
  end

  # GET /dealocity_deals/1
  # GET /dealocity_deals/1.json
  def show
    @dealocity_deal = DealocityDeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dealocity_deal }
    end
  end

  # GET /dealocity_deals/new
  # GET /dealocity_deals/new.json
  def new
    @dealocity_deal = DealocityDeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dealocity_deal }
    end
  end

  # GET /dealocity_deals/1/edit
  def edit
    @dealocity_deal = DealocityDeal.find(params[:id])
  end

  # POST /dealocity_deals
  # POST /dealocity_deals.json
  def create
    @dealocity_deal = DealocityDeal.new(params[:dealocity_deal])

    respond_to do |format|
      if @dealocity_deal.save
        format.html { redirect_to @dealocity_deal, notice: 'Dealocity deal was successfully created.' }
        format.json { render json: @dealocity_deal, status: :created, location: @dealocity_deal }
      else
        format.html { render action: "new" }
        format.json { render json: @dealocity_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dealocity_deals/1
  # PUT /dealocity_deals/1.json
  def update
    @dealocity_deal = DealocityDeal.find(params[:id])

    respond_to do |format|
      if @dealocity_deal.update_attributes(params[:dealocity_deal])
        format.html { redirect_to @dealocity_deal, notice: 'Dealocity deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dealocity_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealocity_deals/1
  # DELETE /dealocity_deals/1.json
  def destroy
    @dealocity_deal = DealocityDeal.find(params[:id])
    @dealocity_deal.destroy

    respond_to do |format|
      format.html { redirect_to dealocity_deals_url }
      format.json { head :no_content }
    end
  end
end
