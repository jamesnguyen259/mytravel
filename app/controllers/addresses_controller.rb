class AddressesController < ApplicationController
    before_action :set_address, only: [:show]
    
    def show
        @addresses = Address.all
        @reviews = @address.places.paginate(page: params[:page], per_page: 10)
    end
    
    private
        # Use callbacks to share common setup or constraints between actions.
        def set_address
          @address = Address.find(params[:id])
        end
end
