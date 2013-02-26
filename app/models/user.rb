class User < ActiveRecord::Base
    attr_accessible :email, :first_name, :last_name

    has_many :posts, foreign_key: "author_id"

    validates :email, :first_name, :last_name, :presence => true
    validates :email, :uniqueness => true, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

    def full_name
        "#{first_name} #{last_name}".titleize
    end
 end

