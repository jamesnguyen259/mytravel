class Place < ActiveRecord::Base
    acts_as_paranoid
    acts_as_commentable
    
    belongs_to :user
    belongs_to :address
    has_many :place_pictures, dependent: :destroy
end