class PlacePicture < ActiveRecord::Base
    acts_as_paranoid
    
    belongs_to :place
    has_attached_file :picture,
        :default_url => "missing_place.jpg"
        
    validates_attachment_content_type :picture, 
        :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end