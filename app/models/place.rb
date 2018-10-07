class Place < ActiveRecord::Base
    belongs_to :user
    belongs_to :address
    has_many :place_pictures
end