class HomeController < ApplicationController
  def index
    if params[:search]
      @result = Place.search(params[:search]).paginate(page: params[:page], per_page: 5)
    else
      @place_reviews = Place.paginate(page: params[:page], per_page: 5)
    end
    @popular_address = Address.joins(:places).group("places.address_id").order("count(places.address_id) desc").take 10
    @recent_reviews = Place.order("created_at desc").take 3
    @most_viewed = Place.order("views_number desc").take 5
  end
  
  def style
  end
end
