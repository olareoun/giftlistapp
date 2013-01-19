class GiftsController < ApplicationController
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
