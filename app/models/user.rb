class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable,
           :confirmable, :trackable, 
           :omniauthable, :omniauth_providers => [:facebook]
    has_many :places
    has_many :comments
    validates :name, presence: true
    validates :email, presence: true
    
    has_attached_file :avatar, 
        :styles => { small: "64x64" },
        :default_url => "avatar_:style.png"
        
    validates_attachment_content_type :avatar, 
        :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
        
    def self.new_with_session(params, session)
      super.tap do |user|
        if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
          user.email = data["email"] if user.email.blank?
        end
      end
    end

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name
        user.skip_confirmation!
      end
    end
end
