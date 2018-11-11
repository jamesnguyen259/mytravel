class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable,
           :confirmable, :trackable
    has_many :places
    has_many :comments
    validates :name, presence: true
    validates :email, presence: true
    
    has_attached_file :avatar, 
        :styles => { small: "64x64" },
        :default_url => "avatar_:style.png"
        
    validates_attachment_content_type :avatar, 
        :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
