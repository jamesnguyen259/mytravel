class PlacePicture < ActiveRecord::Base
    belongs_to :place
    has_attached_file :picture
    validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end