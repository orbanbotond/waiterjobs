class PagesController < ApplicationController
  def page
    url = params[:sefurl]
    @page = RestaurantPage.find_by_sefurl(url) || TextualPage.find_by_sefurl(url)
    if @page
    else
      render :status => 404 
    end
  end
end
