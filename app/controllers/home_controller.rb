class HomeController < ApplicationController
	layout 'home'
  def index
  end
  def show
  	render :layout => 'application'
  end
end
