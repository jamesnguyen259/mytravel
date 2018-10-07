class PlacesController < ApplicationController
    before_action :set_place, only: [:show]
    
    def show
        @popular_address = Address.joins(:places).group("places.address_id").order("count(places.address_id) desc").take 10
        @related_reviews = Place.where(address_id: @place.address.id).take 4
        @same_author_reviews = Place.where(user_id: @place.user.id).take 4
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_place
          @place = Place.find(params[:id])
        end
end
