class ListOfDealsController < ApplicationController
  # GET /list_of_deals
  # GET /list_of_deals.json
  def index
    @list_of_deals = ListOfDeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list_of_deals }
    end
  end

  # GET /list_of_deals/1
  # GET /list_of_deals/1.json
  def show
    @list_of_deal = ListOfDeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list_of_deal }
    end
  end

  # GET /list_of_deals/new
  # GET /list_of_deals/new.json
  def new
    @list_of_deal = ListOfDeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @list_of_deal }
    end
  end

  # GET /list_of_deals/1/edit
  def edit
    @list_of_deal = ListOfDeal.find(params[:id])
  end

  # POST /list_of_deals
  # POST /list_of_deals.json
  def create
    @list_of_deal = ListOfDeal.new(params[:list_of_deal])

    respond_to do |format|
      if @list_of_deal.save
        format.html { redirect_to @list_of_deal, notice: 'List of deal was successfully created.' }
        format.json { render json: @list_of_deal, status: :created, location: @list_of_deal }
      else
        format.html { render action: "new" }
        format.json { render json: @list_of_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /list_of_deals/1
  # PUT /list_of_deals/1.json
  def update
    @list_of_deal = ListOfDeal.find(params[:id])

    respond_to do |format|
      if @list_of_deal.update_attributes(params[:list_of_deal])
        format.html { redirect_to @list_of_deal, notice: 'List of deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @list_of_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_of_deals/1
  # DELETE /list_of_deals/1.json
  def destroy
    @list_of_deal = ListOfDeal.find(params[:id])
    @list_of_deal.destroy

    respond_to do |format|
      format.html { redirect_to list_of_deals_url }
      format.json { head :no_content }
    end
  end
end
