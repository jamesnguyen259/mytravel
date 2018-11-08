class Place < ActiveRecord::Base
    acts_as_paranoid
    acts_as_commentable
    
    belongs_to :user
    belongs_to :address
    has_many :place_pictures, dependent: :destroy
    
    def self.search key_word
        word = trim key_word, " ."
        where("place_name LIKE ?", "%#{word}%")
    end
    
    def self.trim input_string, chars
        chars = Regexp.escape chars
        input_string.gsub(/\A[#{chars}]+|[#{chars}]+\z/, "")
    end
end