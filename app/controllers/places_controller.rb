class PlacesController < ApplicationController
    before_action :set_place, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit] 
    
    def show
        @popular_address = Address.joins(:places).group("places.address_id").order("count(places.address_id) desc").take 10
        @related_reviews = Place.where(address_id: @place.address.id).take 4
        @same_author_reviews = Place.where(user_id: @place.user.id).take 4
        
        #update views number when clicking review post
        @place.views_number += 1
        @place.save
    end
    
    def new
        @place = current_user.places.build
    end
    
    def create
        @place = current_user.places.build place_params
        if @place.save
            if params[:images]
                params[:images].each { |image|
                  @place.place_pictures.create(picture: image)
                }
            end
            flash[:notice] = "Created successfully!!"
            redirect_to @place
        else
           render "new" 
        end
    end
    
    def edit
    end
    
    def update
        if @place.update_attributes place_params
            if params[:images]
                @place.place_pictures.each_with_index do |place_picture, index|
                    if params[:images][index]
                        place_picture.update :picture => params[:images][index]
                    end
                end
            end
            flash[:notice] = "Updated successfully!!"
            redirect_to @place
        else
           render "edit" 
        end
    end
    
    def destroy
        @place.destroy
        flash[:notice] = "Deleted successfully!!"
        redirect_to :back
    end
    
    private
        def place_params
            params.require(:place).permit(:place_name, :review_content, :address_id) 
        end
        
        def set_place
          @place = Place.find(params[:id])
        end
end
