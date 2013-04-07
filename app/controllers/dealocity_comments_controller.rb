class DealocityCommentsController < ApplicationController
  # GET /dealocity_comments
  # GET /dealocity_comments.json
  def index
    @dealocity_comments = DealocityComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dealocity_comments }
    end
  end

  # GET /dealocity_comments/1
  # GET /dealocity_comments/1.json
  def show
    @dealocity_comment = DealocityComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dealocity_comment }
    end
  end

  # GET /dealocity_comments/new
  # GET /dealocity_comments/new.json
  def new
    @dealocity_comment = DealocityComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dealocity_comment }
    end
  end

  # GET /dealocity_comments/1/edit
  def edit
    @dealocity_comment = DealocityComment.find(params[:id])
  end

  # POST /dealocity_comments
  # POST /dealocity_comments.json
  def create
    @dealocity_comment = DealocityComment.new(params[:dealocity_comment])

    respond_to do |format|
      if @dealocity_comment.save
        format.html { redirect_to @dealocity_comment, notice: 'Dealocity comment was successfully created.' }
        format.json { render json: @dealocity_comment, status: :created, location: @dealocity_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @dealocity_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dealocity_comments/1
  # PUT /dealocity_comments/1.json
  def update
    @dealocity_comment = DealocityComment.find(params[:id])

    respond_to do |format|
      if @dealocity_comment.update_attributes(params[:dealocity_comment])
        format.html { redirect_to @dealocity_comment, notice: 'Dealocity comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dealocity_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealocity_comments/1
  # DELETE /dealocity_comments/1.json
  def destroy
    @dealocity_comment = DealocityComment.find(params[:id])
    @dealocity_comment.destroy

    respond_to do |format|
      format.html { redirect_to dealocity_comments_url }
      format.json { head :no_content }
    end
  end
end
