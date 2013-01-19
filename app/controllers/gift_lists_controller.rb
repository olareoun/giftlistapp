class GiftListsController < ApplicationController
  # GET /gift_lists
  # GET /gift_lists.json
  def index
    @gift_lists = GiftList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gift_lists }
    end
  end

  # GET /gift_lists/1
  # GET /gift_lists/1.json
  def show
    @gift_list = GiftList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gift_list }
    end
  end

  # GET /gift_lists/new
  # GET /gift_lists/new.json
  def new
    @gift_list = GiftList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gift_list }
    end
  end

  # GET /gift_lists/1/edit
  def edit
    @gift_list = GiftList.find(params[:id])
  end

  # POST /gift_lists
  # POST /gift_lists.json
  def create
    @gift_list = GiftList.new(params[:gift_list])

    respond_to do |format|
      if @gift_list.save
        format.html { redirect_to @gift_list, notice: 'Gift list was successfully created.' }
        format.json { render json: @gift_list, status: :created, location: @gift_list }
      else
        format.html { render action: "new" }
        format.json { render json: @gift_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gift_lists/1
  # PUT /gift_lists/1.json
  def update
    @gift_list = GiftList.find(params[:id])

    respond_to do |format|
      if @gift_list.update_attributes(params[:gift_list])
        format.html { redirect_to @gift_list, notice: 'Gift list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gift_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_lists/1
  # DELETE /gift_lists/1.json
  def destroy
    @gift_list = GiftList.find(params[:id])
    @gift_list.destroy

    respond_to do |format|
      format.html { redirect_to gift_lists_url }
      format.json { head :no_content }
    end
  end
end
