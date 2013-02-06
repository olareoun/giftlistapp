class GiftsController < ApplicationController
  def new
    @gift_list = GiftList.find(params[:gift_list_id])
    @gift = Gift.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gift }
    end
  end

  def create
    @gift_list = GiftList.find(params[:gift_list_id])
    @gift = @gift_list.gifts.create(params[:gift])
    redirect_to gift_list_path(@gift_list)
  end

  def destroy 
    @gift_list = GiftList.find(params[:gift_list_id])
    @gift = @gift_list.gifts.find(params[:id])
    @gift.destroy
    redirect_to gift_list_path(@gift_list)
  end
end
